# Jupyter Demo

This is a demo project for adding a [Jupyter Notebook](https://jupyter.org/) server to an [Openshift Python](https://access.redhat.com/containers/?tab=overview&platform=openshift#/registry.access.redhat.com/rhscl/python-36-rhel7) container.

## Building

As an (obvious?) prerequisite, you'll need an OpenShift platform.

First, create a new Python container. The latest version I have available is Python 3.6, so that's what I used.

![create python container](static/create_python_container.png?raw=true)

The settings for the container will look something like this.

![configuration](static/configuration.png?raw=true)

Finally, you will need the generated token to access your site. (There are options to disable this, but you really shouldn't do that.) This can be found in your pod log.

![pod logs token](static/pod_logs_token.png?raw=true)

Copy the token above, and paste it into your running Jupyter notebook.

![paste token](static/paste_token.png?raw=true)

Your Python notebook should now be running!

![jupyter running](static/jupyter_running.png?raw=true)

That's it! Now, go forth and create notebooks!

## Disclaimer

This is an ephemeral server. If you want something that will last with a rebuild, then you will need to create an external volume and save data to that volume. Any data saved to the local container drive will be lost on a container rebuild or restart.



