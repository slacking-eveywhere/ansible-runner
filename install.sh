#/usr/bin/env bash

INSTALL_DIR=${HOME}/.local/bin
SCRIPT_NAME=ansible-runner
ANSIBLE_RUNNER_SCRIPT_URL=


if ! command -v wget >/dev/null 2>&1; then
    echo "wget is NOT installed. Please install it."
    exit 1
fi


mkdir "${INSTALL_DIR}"
wget -q -O "${INSTALL_DIR}/${SCRIPT_NAME}" "${ANSIBLE_RUNNER_SCRIPT_URL}"

chmod u+x "${INSTALL_DIR}/${SCRIPT_NAME}"


if [[ ":$PATH:" != *":${HOME}/.local/bin:"* ]]; then
    echo "Adding ~/.local/bin to PATH"
    export PATH="${HOME}/.local/bin:${PATH}"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi
