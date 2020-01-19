{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row">
            <div class="col-md-12 page-title p-3">
                <h1>Sign In</h1>
            </div>
            <div class="col-md-12 body-text">
                <p>Welcome to Recipe Central!</p>
                <p>Please enter your details below to sign in to your account</p>
            </div>
        </div>
        <div class="row white-row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                {if $error}
                    <div class="alert alert-danger text-center" role="alert">
                        {$error}
                    </div>
                {/if}
                <form action="" method="post">
                    <div class="form-group">
                        <label class="required" for="email">Email address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label class="required" for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password"
                               placeholder="Password">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Sign In</button>
                    </div>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
        <div class="row join-referral white-row">
            <div class="col-md-4"></div>
            <div class="col-md-4 text-center">
                <a class="text-link sign-up-link" href="./index.php?p=join">New around here? Sign up</a>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
{/block}