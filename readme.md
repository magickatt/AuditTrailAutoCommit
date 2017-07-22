# Automatically commit an audit trail

Programatically commit changes made to a [YAML](http://www.yaml.org) configuration file for audit trail purposes. Designed to be run automatically as part of [CI](https://en.wikipedia.org/wiki/Continuous_integration) and or [CD](https://en.wikipedia.org/wiki/Continuous_delivery) to keep a revision history of what branches, tags or container images were built or deployed.

## Usage

    ./update_configuration.sh release_name
    
Currently this will update the backend_version key in configuration.yml
