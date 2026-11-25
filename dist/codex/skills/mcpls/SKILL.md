---
name: mcpls
description: Use MCPLS for semantic code navigation and diagnostics when symbol identity or cross-file relationships matter, and assess incomplete language-server results.
---

# MCPLS

Use MCPLS to resolve definitions, references, callers, and diagnostics when the answer depends on symbol identity. Use `rg` for filenames, literal text, generated code, and quick scope discovery. Inspect the source before relying on a server result.

## Query the Intended Symbol

- Call `get_tool_support` before using MCPLS with a new language. Support means a request can reach a server. It does not establish index coverage.
- Identify the exact file and identifier. Prefer a one-based line and character on that identifier. Use `symbol_name` only when the symbol is defined in the supplied file. If a name query fails, locate the symbol in its defining file or query a verified source position.
- Check `resolved_symbol` on name queries. Check returned locations and `truncated` on navigation results. If `positions_degraded` is `request`, do not trust the symbol match. If it is `response`, verify returned character positions in source.

## Assess Incomplete Results

- Treat unrelated locations and short reference lists as inconclusive. An empty reference result can include `index_coverage`, but it does not prove that no references exist.
- If indexing is in progress, retry after it finishes. If the result remains incomplete, compare it with `rg` and source inspection. Report the limit of the semantic result.
- Inspect messages and logs for the affected language server. Restart only that server when a stale index or changed build configuration justifies it. A restart discards server state and can affect other clients.

## C++ Build Context

For incomplete cross-file C++ results, check whether clangd has a compilation database that covers the relevant translation units. Generate `compile_commands.json` from a representative local build when needed. Keep it in the project build directory, or use a project-local root symlink if clangd cannot discover it. Ignore generated databases and symlinks in that project. Do not put a project database in the home directory or commit it to dotfiles.

A database for one target may omit other source files. A new database may also require indexing time. Distinguish missing build context from an invalid query before changing configuration.
