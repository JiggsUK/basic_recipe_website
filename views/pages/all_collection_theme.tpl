{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row">
            <div class="col-md-12">
                <div class="page-title pt-3">
                    <h1>{$collection_theme.collection_theme} Collection</h1>
                </div>
            </div>
        </div>
        <div class="row white-row">
            {foreach from=$collection_data item=collection}
                <div class="col-md-4 mt-3 mb-3">
                    <div class="card-deck">
                        <div class="card hide-overflow">
                            <a class="collection-link"
                               href="./index.php?p=indiv_collection&id={$collection.collection_id}">
                                <div class="card-img-holder">
                                    <img class="card-img-top" src="./images/{$collection.collection_image}.jpg"
                                         alt="image of {$collection.collection_name}">
                                </div>
                                <div class="card-img-overlay d-flex align-items-center">
                                    <h5 class="collection-title">{$collection.collection_name}</h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
{/block}
