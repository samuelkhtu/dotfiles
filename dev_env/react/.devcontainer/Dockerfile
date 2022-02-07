# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.217.1/containers/javascript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 16, 14, 12, 16-bullseye, 14-bullseye, 12-bullseye, 16-buster, 14-buster, 12-buster
ARG VARIANT="16-bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
    && apt-get -y install --no-install-recommends fonttools  \
    && git clone https://github.com/kiliman/operator-mono-lig.git \
    && cd operator-mono-lig

WORKDIR /operator-mono-lig

ENV HOME="/root" INPUT=$HOME/operator-mono-lig/original OUTPUT=$HOME/operator-mono-lig/build

RUN npm install --production \
    && mkdir build \
    && sed -i 's/bash/sh/g' build.sh \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["./build.sh"]

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node modules
# RUN su node -c "npm install -g <your-package-list-here>"
