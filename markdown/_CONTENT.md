## What's in this folder

### `RELEASE-NOTES.md`

A template to be used to manage release notes.

It assumes developers will write notes for next version between the two comments `<!-- NEXT VERSION: -->` and `<!-- PREVIOUS VERSION: -->`.

A script will then process whatever is there and insert it after `<!-- PREVIOUS VERSION: -->`, using the version number being assigned by CI system.

For example, when processing this file

```
# Release Notes

Legend:
- 🆕 New feature
- ✅ Fix
- ⚠️ Breaking change

<!-- NEXT VERSION: -->

- 🆕 Sample content 1
- Sample content 2

<!-- PREVIOUS VERSIONS: -->

## Version 1.0.24

- ✅ Old content 1
```

the result will be something like

```
# Release Notes

Legend:
- 🆕 New feature
- ✅ Fix
- ⚠️ Breaking change

<!-- NEXT VERSION: -->

<!-- PREVIOUS VERSIONS: -->

## Version 1.0.25

- 🆕 Sample content 1
- Sample content 2

## Version 1.0.24

- ✅ Old content 1
```

