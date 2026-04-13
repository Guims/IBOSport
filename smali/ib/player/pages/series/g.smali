.class public final Lib/player/pages/series/g;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:LA4/c;

.field public final synthetic q:Lib/player/pages/series/h;


# direct methods
.method public constructor <init>(Lib/player/pages/series/h;LA4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/player/pages/series/g;->q:Lib/player/pages/series/h;

    iput-object p2, p0, Lib/player/pages/series/g;->b:LA4/c;

    return-void
.end method

.method public static a(Lib/player/pages/series/h;Lib/player/models/EpisodeModel;II)V
    .locals 10

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->getTmdb()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lib/player/models/AppInfoModel;->getTmdbKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Lib/player/models/EpisodeInfoModel;

    invoke-direct {v2}, Lib/player/models/EpisodeInfoModel;-><init>()V

    invoke-virtual {p1, v2}, Lib/player/models/EpisodeModel;->setInfo(Lib/player/models/EpisodeInfoModel;)V

    :cond_2
    move v3, p3

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getEpisode_num()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_3
    sget-object v4, Lib/player/base/n;->k:Ljava/lang/String;

    const-string v5, "movie/"

    const-string v6, "tv/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/season/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/episode/"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "?api_key="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&language=en-US"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object p3

    invoke-interface {p3, p2}, Lu4/a;->v(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    invoke-interface {p2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_d

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "still_path"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "http"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Lib/player/models/EpisodeInfoModel;->setMovie_image(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lib/player/pages/series/g;->b:LA4/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "episodes"

    const-string v2, "backdrop_path"

    const-string v3, "info"

    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    iget-object v6, v0, Lib/player/pages/series/g;->b:LA4/c;

    if-eqz v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw5/K;

    invoke-virtual {v4}, Lw5/K;->string()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/j;

    invoke-direct {v4}, Lcom/google/gson/j;-><init>()V

    new-instance v8, Lib/player/models/InfoSerie;

    invoke-direct {v8}, Lib/player/models/InfoSerie;-><init>()V

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v11, Lib/player/models/InfoSerie$Info;

    invoke-direct {v11}, Lib/player/models/InfoSerie$Info;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v13, :cond_0

    :try_start_1
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_0

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_0
    :goto_1
    invoke-virtual {v11, v12}, Lib/player/models/InfoSerie$Info;->setBackdrop_path(Ljava/util/List;)V

    invoke-virtual {v8, v11}, Lib/player/models/InfoSerie;->setInfo(Lib/player/models/InfoSerie$Info;)V

    :cond_1
    const-string v2, "seasons"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lib/player/pages/series/f;

    invoke-direct {v12}, Lp4/a;-><init>()V

    iget-object v12, v12, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v2, v12}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v11}, Lib/player/models/InfoSerie;->setSeasons(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-class v11, Lib/player/models/EpisodeInfoModel;

    const-class v12, Lib/player/models/EpisodeModel;

    const-string v13, ""

    iget-object v14, v0, Lib/player/pages/series/g;->q:Lib/player/pages/series/h;

    const/4 v15, 0x1

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_a

    invoke-virtual {v8}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v7, v10}, Lib/player/pages/series/h;->T(Lib/player/pages/series/h;Ljava/util/ArrayList;Ljava/lang/String;)Lib/player/models/Season;

    move-result-object v7

    goto :goto_3

    :cond_3
    new-instance v7, Lib/player/models/Season;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v14, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 1"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5, v15, v13}, Lib/player/models/Season;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_5

    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move/from16 v16, v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v12, v1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v17, :cond_4

    :try_start_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v1, v0}, Lib/player/models/EpisodeModel;->setInfo(Lib/player/models/EpisodeInfoModel;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_2
    :cond_4
    :try_start_5
    add-int/lit8 v0, v16, 0x1

    add-int/lit8 v17, v15, 0x1

    invoke-static {v14, v1, v0, v17}, Lib/player/pages/series/g;->a(Lib/player/pages/series/h;Lib/player/models/EpisodeModel;II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    goto :goto_4

    :cond_5
    move/from16 v16, v1

    invoke-virtual {v7, v10}, Lib/player/models/Season;->setEpisodeModels(Ljava/util/List;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14, v5, v2}, Lib/player/pages/series/h;->T(Lib/player/pages/series/h;Ljava/util/ArrayList;Ljava/lang/String;)Lib/player/models/Season;

    move-result-object v5

    goto :goto_6

    :cond_7
    new-instance v5, Lib/player/models/Season;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v14, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v10}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v15, v13}, Lib/player/models/Season;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p2, v0

    if-eqz v2, :cond_9

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-ge v10, v0, :cond_9

    :try_start_6
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v16, v1

    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v12, v1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v17, :cond_8

    :try_start_8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v1, v0}, Lib/player/models/EpisodeModel;->setInfo(Lib/player/models/EpisodeInfoModel;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_3
    :cond_8
    :try_start_9
    add-int/lit8 v0, v10, 0x1

    invoke-static {v14, v1, v15, v0}, Lib/player/pages/series/g;->a(Lib/player/pages/series/h;Lib/player/models/EpisodeModel;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_8

    :catch_4
    move-object/from16 v16, v1

    :catch_5
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    :cond_9
    move-object/from16 v16, v1

    :try_start_a
    invoke-virtual {v5, v7}, Lib/player/models/Season;->setEpisodeModels(Ljava/util/List;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v8, v9}, Lib/player/models/InfoSerie;->setSeasons(Ljava/util/List;)V

    invoke-virtual {v6, v8}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_a

    :goto_9
    invoke-virtual {v6, v0}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
