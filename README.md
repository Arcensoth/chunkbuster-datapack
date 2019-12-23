# Chunkbuster
Lag-friendly and CPU-optimized chunk pre-generator.

[![imp-module-badge]](https://github.com/Arcensoth/imp-datapack)
[![github-release-badge]](https://github.com/Arcensoth/chunkbuster-datapack/releases)

- [Q & A](#q--a)
  - [What does it do?](#what-does-it-do)
  - [How do I use it?](#how-do-i-use-it)
  - [How does it work?](#how-does-it-work)
- [Installation](#installation)

## Q & A
### What does it do?
It attempts to pre-generate chunks as fast as possible without causing lag.

### How do I use it?
You stand in the middle of the area you want to pre-generate and then run `trigger ckb.run set <diameter_in_blocks>` replacing `<diameter_in_blocks>` with your desired diameter (in blocks).

You can have multiple areas pre-generating at the same time, but they're still sharing CPU time so it's not going to go any faster.

### How does it work?
It uses [Tickbuster] to generate chunks at the sub-tick level, teleporting around marker entities and running `forceload` on them.

## Installation
### Dependencies
Datapack        | Version
--------------- | -------
[Tickbuster]    | `v0.1.0-imp`

[imp-module-badge]: https://img.shields.io/static/v1.svg?label=imp&message=module&color=%23AA8ED6&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjEuNv1OCegAAAH2SURBVFhH1Zk9TgJRFIWHSEhYAbU2WNHTkbAMjYX27MHYETdACwkFBnZBo6V70BVoTIyD35l3gQwgMGbGuX7JCXPvfT8nb37ziBaLxUkcxz30oF/F0RHQrkr7FrpBfTREM5OOlVOtpbbWbS87vdjBCuIRqlufFJQr1NpogF5Dj8OorfVpE1ZsuBTU6mgUegSIeypMLV5B7hE1rW8CcRfNUWzNMqO+oDG6NmwCpXNyT6HVGnJTTTy2OAX5N3SLmoQTfn9tbBMbS2M20R16D5U05McyeG/xTqjnZmyTQ2PLmwxeWewOedP5P+PgK6T8IE/odHlnbl2gZWOewh1PcB3SfpCnxJwgrpF4DqXyMS81sxfwtIqp1RPkdB3OQ7l8zMv6jUNCr6/CnndZkRdom73E4MBqbpCnxBzH+ip5CWk/mKeqVk+fQy6RN5fPwCXyJoN9i90hbzI4tNgd8iaDM4vdIW//wqD7U+z+JnH/mPH9oObX96tOEPj9WBAEvj+3yPn+YBUktbVR+irKA6S2RlZQn4RmpTIxO9vgvIFKu6M1tzyYnd3QrkOjj9Dl77A5O2ZjPzS+QJ+ha/FoLnRp0x+HmSx8JTVHZnNL6K/TXdg1aWMfd1p/gkEaDFLUBub+GyILDFbYFnBuMEdhm+i5w0S5/w2xTRR9AyY9bVacGuF5AAAAAElFTkSuQmCC
[github-release-badge]: https://img.shields.io/github/release/Arcensoth/chunkbuster-datapack.svg?logo=github
[Tickbuster]: https://github.com/Arcensoth/tickbuster-datapack
