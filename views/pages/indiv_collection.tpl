{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row">
            <div class="col-md-12">
                <div class="page-title pt-3">
                    <h1>{$collection_name.collection_name} Recipe Collection</h1>
                </div>
            </div>
        </div>
        <div class="row white-row">
            <div class="col-md-12">
                <div class="row">
                    {foreach from=$recipes_collection item=recipe}
                        <div class="col-md-4 recipe-row">
                            <div class="card-deck">
                                <a class="recipe-link" href="./index.php?p=indiv_recipe&id={$recipe.recipe_id}">
                                    <div class="card card-hover">
                                        <div class="card-img-holder">
                                            <img class="card-img" src="./images/{$recipe.image_name}.jpg"
                                                 alt="image of {$recipe.recipe_name}">
                                        </div>
                                        <div class="card-body text-center">
                                            <h5 class="recipe-title">{$recipe.recipe_name}</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}
