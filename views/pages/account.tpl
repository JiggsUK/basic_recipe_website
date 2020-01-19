{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        {if $access}
            <div class="row white-row">
                <div class="col-md-12  page-title mt-3">
                    <h1>Your Account</h1>
                    <div class="body-text pt-3">
                        <p>Permission Denied</p>
                    </div>
                </div>
            </div>
        {else}
            <div class="row white-row">
                <div class="col-md-12  page-title mt-3">
                    <h1>Your Account</h1>
                    <div class="body-text pt-3">
                        <p><strong>Display Name:</strong> {$user_data.user_name}</p>
                        <p><strong>Email:</strong> {$user_data.user_email}</p>
                    </div>
                </div>
            </div>
            <div class="row blue-row p-3">
                <div class="col-md-12 page-alt-subtitle-left">
                    <h3>Your Reviews</h3>
                    <div class="col-md-12">
                        {foreach from=$user_reviews item=review}
                            <div class="card review-card">
                                <div class="card-body body-text-left">
                                    <h5 class="card-subtitle-alt pb-1">Recipe:<a class="review-link pl-3"
                                                                                 href="./index.php?p=indiv_recipe&id={$review.recipe_id}">{$review.recipe_name}
                                    </h5></a>
                                    <h6 class="card-subtitle-alt pb-2">Review:<p
                                                class="card-text pl-3">{$review.user_review}</p></h6>
                                    <h6 class="card-subtitle-alt pb-2">Rating:<p
                                                class="card-text pl-3">{$review.user_rating} <i class="fas fa-star"></i>
                                    </h6>
                                </div>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        {/if}
    </div>
{/block}