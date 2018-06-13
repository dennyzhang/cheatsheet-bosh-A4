# cheatsheet-bosh-A4
Bosh CheatSheets In A4

<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin_icon.png)](https://www.linkedin.com/in/dennyzhang001) <a href="https://www.dennyzhang.com/slack" target="_blank" rel="nofollow"><img src="http://slack.dennyzhang.com/badge.svg" alt="slack"/></a> [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang)

File me [tickets](https://github.com/DennyZhang/cheatsheet-bosh-A4/issues) or star [the repo](https://github.com/DennyZhang/cheatsheet-bosh-A4).

Printable version on A4 page: [cheatsheet-bosh-A4.pdf](cheatsheet-bosh-A4.pdf)

<a href="https://www.dennyzhang.com"><img align="right" width="185" height="37" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>

See more CheatSheets from Denny: [here](https://github.com/topics/denny-cheatsheets)

- Query status

| Name                                        | Summary                                 |
| :------------------------------------------ | --------------------------------------- |
| `bosh deployments`                          | List all bosh deployments               |
| `bosh -d $deployment_id logs`               | Download log files                      |
| `bosh cloud-config`                         |                                         |
| `bosh configs`                              |                                         |
| `bosh env`                                  |                                         |
| `bosh vms`                                  |                                         |
| `bosh instances`                            |                                         |

- Tasks

| Name                                          | Summary                                 |
| :------------------------------------------   | --------------------------------------- |
| `bosh tasks --recent 10`                      | List recent tasks                       |
| `bosh task -a`                                | Attach to current task                  |
| `bosh task $id`                               | Show task by id                         |
| `bosh events`                                 |                                         |
| `bosh ssh -d $deployment_name $instance_name` |                                         |
| `bosh logs -d $deployment_name`               |                                         |

- Misc

| Name                                        | Summary                                 |
| :------------------------------------------ | --------------------------------------- |
| `apt install bosh-cli`                      | Install bosh                            |

- Online Help Usage
```
kubo@jumper:~$ bosh --help
Usage:
  bosh [OPTIONS] <command>

Application Options:
  -v, --version          Show CLI version
      --config=          Config file path (default: ~/.bosh/config) [$BOSH_CONFIG]
  -e, --environment=     Director environment name or URL [$BOSH_ENVIRONMENT]
      --ca-cert=         Director CA certificate path or value [$BOSH_CA_CERT]
      --sha2             Use SHA256 checksums [$BOSH_SHA2]
      --parallel=        The max number of parallel operations (default: 5)
      --client=          Override username or UAA client [$BOSH_CLIENT]
      --client-secret=   Override password or UAA client secret [$BOSH_CLIENT_SECRET]
  -d, --deployment=      Deployment name [$BOSH_DEPLOYMENT]
      --column=          Filter to show only given column(s)
      --json             Output as JSON
      --tty              Force TTY-like output
      --no-color         Toggle colorized output
  -n, --non-interactive  Don't ask for user input [$BOSH_NON_INTERACTIVE]

Help Options:
  -h, --help             Show this help message

Available commands:
  add-blob               Add blob                                           https://bosh.io/docs/cli-v2#add-blob
  alias-env              Alias environment to save URL and CA certificate   https://bosh.io/docs/cli-v2#alias-env
  attach-disk            Attaches disk to an instance                       https://bosh.io/docs/cli-v2#attach-disk
  blobs                  List blobs                                         https://bosh.io/docs/cli-v2#blobs
  cancel-task            Cancel task at its next checkpoint                 https://bosh.io/docs/cli-v2#cancel-task (aliases: ct)
  clean-up               Clean up releases, stemcells, disks, etc.          https://bosh.io/docs/cli-v2#clean-up
  cloud-check            Cloud consistency check and interactive repair     https://bosh.io/docs/cli-v2#cloud-check (aliases: cck, cloudcheck)
  cloud-config           Show current cloud config                          https://bosh.io/docs/cli-v2#cloud-config (aliases: cc)
  config                 Show current config for either ID or both type and name https://bosh.io/docs/cli-v2#config (aliases: c)
  configs                List configs                                       https://bosh.io/docs/cli-v2#configs (aliases: cs)
  cpi-config             Show current CPI config                            https://bosh.io/docs/cli-v2#cpi-config
  create-env             Create or update BOSH environment                  https://bosh.io/docs/cli-v2#create-env
  create-release         Create release                                     https://bosh.io/docs/cli-v2#create-release (aliases: cr)
  delete-config          Delete config                                      https://bosh.io/docs/cli-v2#delete-config (aliases: dc)
  delete-deployment      Delete deployment                                  https://bosh.io/docs/cli-v2#delete-deployment (aliases: deld)
  delete-disk            Delete disk                                        https://bosh.io/docs/cli-v2#delete-disk
  delete-env             Delete BOSH environment                            https://bosh.io/docs/cli-v2#delete-env
  delete-release         Delete release                                     https://bosh.io/docs/cli-v2#delete-release (aliases: delr)
  delete-snapshot        Delete snapshot                                    https://bosh.io/docs/cli-v2#delete-snapshot
  delete-snapshots       Delete all snapshots in a deployment               https://bosh.io/docs/cli-v2#delete-snapshots
  delete-stemcell        Delete stemcell                                    https://bosh.io/docs/cli-v2#delete-stemcell (aliases: dels)
  delete-vm              Delete VM                                          https://bosh.io/docs/cli-v2#delete-vm
  deploy                 Update deployment                                  https://bosh.io/docs/cli-v2#deploy (aliases: d)
  deployment             Show deployment information                        https://bosh.io/docs/cli-v2#deployment (aliases: dep)
  deployments            List deployments                                   https://bosh.io/docs/cli-v2#deployments (aliases: ds, deps)
  diff-config            Diff two configs by ID                             https://bosh.io/docs/cli-v2#diff-config
  disks                  List disks                                         https://bosh.io/docs/cli-v2#disks
  environment            Show environment                                   https://bosh.io/docs/cli-v2#environment (aliases: env)
  environments           List environments                                  https://bosh.io/docs/cli-v2#environments (aliases: envs)
  errands                List errands                                       https://bosh.io/docs/cli-v2#errands (aliases: es)
  event                  Show event details                                 https://bosh.io/docs/cli-v2#event
  events                 List events                                        https://bosh.io/docs/cli-v2#events
  export-release         Export the compiled release to a tarball           https://bosh.io/docs/cli-v2#export-release
  finalize-release       Create final release from dev release tarball      https://bosh.io/docs/cli-v2#finalize-release
  generate-job           Generate job                                       https://bosh.io/docs/cli-v2#generate-job
  generate-package       Generate package                                   https://bosh.io/docs/cli-v2#generate-package
  help                   Show this help message                             https://bosh.io/docs/cli-v2#help
  ignore                 Ignore an instance                                 https://bosh.io/docs/cli-v2#ignore
  init-release           Initialize release                                 https://bosh.io/docs/cli-v2#init-release
  inspect-release        List release contents such as jobs                 https://bosh.io/docs/cli-v2#inspect-release
  instances              List all instances in a deployment                 https://bosh.io/docs/cli-v2#instances (aliases: is)
  interpolate            Interpolates variables into a manifest             https://bosh.io/docs/cli-v2#interpolate (aliases: int)
  locks                  List current locks                                 https://bosh.io/docs/cli-v2#locks
  log-in                 Log in                                             https://bosh.io/docs/cli-v2#log-in (aliases: l, login)
  log-out                Log out                                            https://bosh.io/docs/cli-v2#log-out (aliases: logout)
  logs                   Fetch logs from instance(s)                        https://bosh.io/docs/cli-v2#logs
  manifest               Show deployment manifest                           https://bosh.io/docs/cli-v2#manifest (aliases: man)
  orphan-disk            Orphan disk                                        https://bosh.io/docs/cli-v2#orphan-disk
  recreate               Recreate instance(s)                               https://bosh.io/docs/cli-v2#recreate
  releases               List releases                                      https://bosh.io/docs/cli-v2#releases (aliases: rs)
  remove-blob            Remove blob                                        https://bosh.io/docs/cli-v2#remove-blob
  repack-stemcell        Repack stemcell                                    https://bosh.io/docs/cli-v2#repack-stemcell
  reset-release          Reset release                                      https://bosh.io/docs/cli-v2#reset-release
  restart                Restart instance(s)                                https://bosh.io/docs/cli-v2#restart
  run-errand             Run errand                                         https://bosh.io/docs/cli-v2#run-errand
  runtime-config         Show current runtime config                        https://bosh.io/docs/cli-v2#runtime-config (aliases: rc)
  scp                    SCP to/from instance(s)                            https://bosh.io/docs/cli-v2#scp
  snapshots              List snapshots                                     https://bosh.io/docs/cli-v2#snapshots
  ssh                    SSH into instance(s)                               https://bosh.io/docs/cli-v2#ssh
  start                  Start instance(s)                                  https://bosh.io/docs/cli-v2#start
  stemcells              List stemcells                                     https://bosh.io/docs/cli-v2#stemcells (aliases: ss)
  stop                   Stop instance(s)                                   https://bosh.io/docs/cli-v2#stop
  sync-blobs             Sync blobs                                         https://bosh.io/docs/cli-v2#sync-blobs
  take-snapshot          Take snapshot                                      https://bosh.io/docs/cli-v2#take-snapshot
  task                   Show task status and start tracking its output     https://bosh.io/docs/cli-v2#task (aliases: t)
  tasks                  List running or recent tasks                       https://bosh.io/docs/cli-v2#tasks (aliases: ts)
  unignore               Unignore an instance                               https://bosh.io/docs/cli-v2#unignore
  update-cloud-config    Update current cloud config                        https://bosh.io/docs/cli-v2#update-cloud-config (aliases: ucc)
  update-config          Update config                                      https://bosh.io/docs/cli-v2#update-config (aliases: uc)
  update-cpi-config      Update current CPI config                          https://bosh.io/docs/cli-v2#update-cpi-config
  update-resurrection    Enable/disable resurrection                        https://bosh.io/docs/cli-v2#update-resurrection
  update-runtime-config  Update current runtime config                      https://bosh.io/docs/cli-v2#update-runtime-config (aliases: urc)
  upload-blobs           Upload blobs                                       https://bosh.io/docs/cli-v2#upload-blobs
  upload-release         Upload release                                     https://bosh.io/docs/cli-v2#upload-release (aliases: ur)
  upload-stemcell        Upload stemcell                                    https://bosh.io/docs/cli-v2#upload-stemcell (aliases: us)
  variables              List variables                                     https://bosh.io/docs/cli-v2#variables (aliases: vars)
  vendor-package         Vendor package                                     https://bosh.io/docs/cli-v2#vendor-package
  vms                    List all VMs in all deployments                    https://bosh.io/docs/cli-v2#vms

Succeeded
```

<a href="https://www.dennyzhang.com"><img align="right" width="201" height="268" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/denny_201706.png"></a>

<a href="https://www.dennyzhang.com"><img align="right" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>
# License
- Code is licensed under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).
