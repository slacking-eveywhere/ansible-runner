# ansible-runner

A Bash script to simplify managing Ansible environments using containers.

## 📋 Features

- **Create an Ansible image** with a specific version.
- **Run Ansible playbooks** with custom user-provided options.
- **Easy installation** via an automatic install script.

## 📥 Installation

1. Download and run the install script from GitHub:

```bash
curl -sL https://raw.githubusercontent.com/slacking-eveywhere/ansible-runner/refs/heads/main/install.sh | bash
```

2. Ensure `~/.local/bin` is in your `PATH`:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## 📌 Usage

### 1. Create an Ansible Image

To create an Ansible image with a specific version:

```bash
ansible-runner build -iv <version>
```

Example:

```bash
ansible-runner build -iv 2.14.0
```

### 2. Run a Playbook

To run a playbook with additional arguments:

```bash
ansible-runner play -iv <version> [ansible-playbook options]
```

Example:

```bash
ansible-runner play -iv 2.14.0 -i inventory.ini playbook.yml
```

### 3. Display Help

To display the script help message:

```bash
ansible-runner --help
```

## 🧹 Uninstallation

To remove `ansible-runner`, simply delete the binary:

```bash
rm -f ~/.local/bin/ansible-runner
```

## 🛠️ Requirements

- Bash
- Docker (for managing Ansible images)

## 📄 License

This project is licensed under the [MIT](LICENSE) license.

---

Contributions are welcome! 🚀

