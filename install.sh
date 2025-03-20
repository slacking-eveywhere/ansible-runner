#/usr/bin/env bash

INSTALL_DIR=${HOME}/.local/bin
SCRIPT_NAME=ansible-runner
ANSIBLE_RUNNER_SCRIPT_URL=https://raw.githubusercontent.com/slacking-eveywhere/ansible-runner/refs/heads/main/ansible-runner

mkdir -p "${INSTALL_DIR}"
curl -s -o "${INSTALL_DIR}/${SCRIPT_NAME}" "${ANSIBLE_RUNNER_SCRIPT_URL}"
chmod u+x "${INSTALL_DIR}/${SCRIPT_NAME}"

echo "Installation done."
echo ""
echo "Using :"
echo "ansible-runner --help"
echo "to see how it works."

if [[ ":$PATH:" != *":${HOME}/.local/bin:"* ]]; then
    echo "Adding ~/.local/bin to PATH"
    export PATH="${HOME}/.local/bin:${PATH}"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi
