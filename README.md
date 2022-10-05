## Usage

1. Clone your repo
    ```shell
    $ git clone --mirror git://example.com/some-big-repo.git
    ```

2. Get [BFG] info
    ```shell
    $ docker run 9b9/bfg
    ```

3. Mount your repo and execute a [BFG] task
    ```shell
    $ docker run -v ${PWD}:/git 9b9/bfg --delete-files *.bin /git/some-big-repo.git
    ```
4. Follow [BFG usage](https://rtyley.github.io/bfg-repo-cleaner/) to physically delete the unwanted stuff

[BFG]: https://rtyley.github.io/bfg-repo-cleaner/