# GitLab- Setting up SSH key

### Step 1 - Install Git

- Open any terminal and check if you already have Git installed by typing:

    ```yaml
    git --version
    ```

    ![Alt text](images/10.png)

### Step 2: Cloning GitLab repository

- Log in to your GitLab account and go to the repository you want to clone.
- Click on the Clone button and the address under Clone with SSH.

    ![Alt text](images/1.png)

- Run the command on your terminal

    ```yaml
    git clone <ssh address>
    ```

    ![Alt text](images/2.png)

- Getting this error is normal. We will need to generate a key to fix this. 

### Step 3: Generate an SSH key

- On your terminal run the following command in order to generate an SSH key.

    ```yaml
    ssh-keygen
    ```

    ![Alt text](images/3.png)

- By default, your user folder will contain a folder called *`.ssh`*. Leave it as it is and hit the `Enter` key.
- If you go into your ssh folder, and run `ls` you should be able to see the keys generated.

    ![Alt text](images/4.png)

- **`id_rsa`** — this is your **PRIVATE** key

- **`id_rsa.pub`** — this is your **PUBLIC** key.You can share it with others.

### Step 4: Adding your SSH Key to GitLab

- In your terminal, open your public key. You can use the cat command to view the contents of the file.

    ```bash
    cat id_rsa.pub
    ```

    ![Alt text](images/5.png)

- Copy the entire contents of the file.
- In GitLab, click on your profile icon on the left hand side > click on edit profile > click on SSH keys on the side bar.

    ![Alt text](images/6.png)

- Click on Add new key.

    ![Alt text](images/7.png)

- Paste your **public key** in the big text box you see on the screen and finally click Add key.

    ![Alt text](images/8.png)

### Step 5: ****Cloning GitLab repository (again)****

- Run the git clone command again.

    ```bash
    git clone <ssh address>
    ```

    ![Alt text](images/9.png)

- Now Git is integrated, you can push and pull changes from GitLab without issues.