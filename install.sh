# Install yq for getting latest release tags
# 
# Ironically, here we'll hard-set the version of
# yq that we'll use
curl -OL "https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_arm64.tar.gz" && \
    tar -xvf yq_linux_arm64.tar.gz && \
    mv yq_linux_arm64 yq && \
    mv yq /usr/local/bin && \
    rm yq* && rm install-man-page.sh

# Install mods
MODS_VERSION=$(curl "https://api.github.com/repos/charmbracelet/mods/tags" | yq -o=json '.[0].name | split("v")[1]' | xargs)

curl -OL https://github.com/charmbracelet/mods/releases/download/v${MODS_VERSION}/mods_${MODS_VERSION}_Linux_arm64.tar.gz && \
    tar -xvf mods_${MODS_VERSION}_Linux_arm64.tar.gz && \
    mv mods_${MODS_VERSION}_Linux_arm64/mods /usr/local/bin/ && \
    rm -rf mods*