<h1>Dev Tool Setup</h1>
<p>This README provides instructions for setting up development tools using the <code>install_and_run_ansible.sh</code> script.</p>

<h2>What</h2>
<p>Create a local dev toolset using Ansible for macOS and Ubuntu. Packages that need to be installed and configured:</p>
<ul>
  <li>Podman</li>
  <li>Podman Desktop</li>
  <li>podman-compose</li>
  <li>Ruby</li>
  <li>Python3</li>
  <li>pip3</li>
</ul>

<h2>Why</h2>
<p>This is for unifying developers environments, ease of install and maintenance, and ease of debugging environment.</p>

<h2>Solution</h2>
<p>This GitHub repository with a bash script to install Ansible and auto-launch Ansible YAML that installs and configures the dev tools.</p>

<h2>Setup Instructions</h2>
<ol>
  <li>
    <strong>Clone the Repository:</strong>
    <div>
      <code>git clone &lt;repository_url&gt;</code><br>
      <code>cd &lt;repository_name&gt;</code>
    </div><br>
  </li>
  <li>
    <strong>Run the Installation Script:</strong>
    <div>
      Execute the following command to run the installation script. This script installs Ansible, Podman, Podman Compose, and Podman Desktop on macOS and Ubuntu.<br>
      <code>sh install_and_run_ansible.sh</code>
    </div>
    <br>
  </li>
  <li>
    <strong>Follow on-screen prompts:</strong>
    <div>The installation script will guide you through the installation process and prompt you for any necessary inputs.</div><br>
  </li>
  <li>
    <strong>Verify Installation:</strong>
    <div>
      After the installation completes, verify that Ansible, Podman, Podman Compose, and Podman Desktop are installed correctly by running the following commands: <br>
      <code>ansible --version</code><br>
      <code>podman --version</code><br>
      <code>podman-compose --version</code>
    </div>
    <br>
  </li>
  <li>
    <strong>Start Using the Dev Tools:</strong>
    <div>You're now ready to start using the installed development tools for your projects.</div>
  </li>
</ol>

