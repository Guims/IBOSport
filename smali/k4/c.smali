.class public final Lk4/c;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public s:Ljava/lang/Object;

.field public t:Ljava/io/Serializable;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk4/d;LV4/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk4/c;->q:I

    iput-object p1, p0, Lk4/c;->v:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(Lk4/e;Ljava/util/LinkedHashMap;Lk4/c;LT/o;LV4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk4/c;->q:I

    iput-object p1, p0, Lk4/c;->s:Ljava/lang/Object;

    iput-object p2, p0, Lk4/c;->t:Ljava/io/Serializable;

    iput-object p3, p0, Lk4/c;->u:Ljava/lang/Object;

    iput-object p4, p0, Lk4/c;->v:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 7

    iget v0, p0, Lk4/c;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lk4/c;

    iget-object p1, p0, Lk4/c;->s:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lk4/e;

    iget-object p1, p0, Lk4/c;->t:Ljava/io/Serializable;

    move-object v3, p1

    check-cast v3, Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lk4/c;->u:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lk4/c;

    iget-object p1, p0, Lk4/c;->v:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, LT/o;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lk4/c;-><init>(Lk4/e;Ljava/util/LinkedHashMap;Lk4/c;LT/o;LV4/d;)V

    return-object v1

    :pswitch_0
    move-object v6, p2

    new-instance p2, Lk4/c;

    iget-object v0, p0, Lk4/c;->v:Ljava/lang/Object;

    check-cast v0, Lk4/d;

    invoke-direct {p2, v0, v6}, Lk4/c;-><init>(Lk4/d;LV4/d;)V

    iput-object p1, p2, Lk4/c;->u:Ljava/lang/Object;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk4/c;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lk4/c;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lk4/c;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lk4/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lk4/c;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lk4/c;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lk4/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lk4/c;->q:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lk4/c;->v:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LT/o;

    iget v0, v1, Lk4/c;->r:I

    sget-object v3, LS4/i;->a:LS4/i;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sget-object v7, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, v1, Lk4/c;->s:Ljava/lang/Object;

    check-cast v0, Lk4/e;

    invoke-static {v0}, Lk4/e;->a(Lk4/e;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v8, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-static {v0, v8}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v0, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lk4/c;->t:Ljava/io/Serializable;

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lk4/c;->u:Ljava/lang/Object;

    check-cast v5, Lk4/c;

    iput v6, v1, Lk4/c;->r:I

    invoke-virtual {v5, v0, v1}, Lk4/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad response code: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput v5, v1, Lk4/c;->r:I

    invoke-virtual {v2, v0, v1}, LT/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v7, :cond_7

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    iput v4, v1, Lk4/c;->r:I

    invoke-virtual {v2, v5, v1}, LT/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v7, :cond_7

    :goto_3
    move-object v3, v7

    :cond_7
    :goto_4
    return-object v3

    :pswitch_0
    const-string v0, "cache_duration"

    const-string v2, "session_timeout_seconds"

    const-string v3, "sampling_rate"

    const-string v4, "sessions_enabled"

    iget-object v5, v1, Lk4/c;->v:Ljava/lang/Object;

    check-cast v5, Lk4/d;

    iget v6, v1, Lk4/c;->r:I

    sget-object v7, Lk4/k;->f:LX/g;

    sget-object v8, LS4/i;->a:LS4/i;

    const/4 v9, 0x0

    sget-object v10, LW4/a;->b:LW4/a;

    packed-switch v6, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_2
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_3
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_4
    iget-object v0, v1, Lk4/c;->u:Ljava/lang/Object;

    check-cast v0, Le5/m;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_5
    iget-object v0, v1, Lk4/c;->s:Ljava/lang/Object;

    check-cast v0, Le5/m;

    iget-object v2, v1, Lk4/c;->u:Ljava/lang/Object;

    check-cast v2, Le5/m;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_6
    iget-object v0, v1, Lk4/c;->t:Ljava/io/Serializable;

    check-cast v0, Le5/m;

    iget-object v2, v1, Lk4/c;->s:Ljava/lang/Object;

    check-cast v2, Le5/m;

    iget-object v3, v1, Lk4/c;->u:Ljava/lang/Object;

    check-cast v3, Le5/m;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v6, v1, Lk4/c;->u:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Fetched settings: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SessionConfigFetcher"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Le5/m;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v13, Le5/m;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Le5/m;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    const-string v15, "app_quality"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v15, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v6, v15}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lorg/json/JSONObject;

    :try_start_2
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v9

    goto :goto_7

    :cond_8
    move-object v4, v9

    :goto_5
    :try_start_3
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    iput-object v3, v11, Le5/m;->b:Ljava/lang/Object;

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v13, Le5/m;->b:Ljava/lang/Object;

    :cond_a
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v14, Le5/m;->b:Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :goto_7
    const-string v2, "Error parsing the configs remotely fetched: "

    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_b
    move-object v4, v9

    :cond_c
    :goto_8
    if-eqz v4, :cond_f

    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    iput-object v11, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v13, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v14, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v2, 0x1

    iput v2, v1, Lk4/c;->r:I

    sget-object v2, Lk4/k;->c:LX/g;

    invoke-virtual {v0, v2, v4, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    goto :goto_9

    :cond_d
    move-object v0, v8

    :goto_9
    if-ne v0, v10, :cond_e

    goto/16 :goto_16

    :cond_e
    move-object v3, v11

    move-object v2, v13

    move-object v0, v14

    :goto_a
    move-object v13, v2

    move-object v2, v3

    goto :goto_b

    :cond_f
    move-object v2, v11

    move-object v0, v14

    :goto_b
    iget-object v3, v13, Le5/m;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_11

    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v3

    iget-object v4, v13, Le5/m;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iput-object v2, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v0, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v6, 0x2

    iput v6, v1, Lk4/c;->r:I

    sget-object v6, Lk4/k;->e:LX/g;

    invoke-virtual {v3, v6, v4, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_10

    goto :goto_c

    :cond_10
    move-object v3, v8

    :goto_c
    if-ne v3, v10, :cond_11

    goto/16 :goto_16

    :cond_11
    :goto_d
    iget-object v3, v2, Le5/m;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    if-eqz v3, :cond_13

    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v3

    iget-object v2, v2, Le5/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    iput-object v0, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v4, 0x3

    iput v4, v1, Lk4/c;->r:I

    sget-object v4, Lk4/k;->d:LX/g;

    invoke-virtual {v3, v4, v2, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_12

    goto :goto_e

    :cond_12
    move-object v2, v8

    :goto_e
    if-ne v2, v10, :cond_13

    goto/16 :goto_16

    :cond_13
    :goto_f
    iget-object v2, v0, Le5/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_16

    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v2

    iget-object v0, v0, Le5/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v9, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v3, 0x4

    iput v3, v1, Lk4/c;->r:I

    invoke-virtual {v2, v7, v0, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_14

    goto :goto_10

    :cond_14
    move-object v0, v8

    :goto_10
    if-ne v0, v10, :cond_15

    goto :goto_16

    :cond_15
    :goto_11
    move-object v0, v8

    goto :goto_12

    :cond_16
    move-object v0, v9

    :goto_12
    if-nez v0, :cond_18

    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x15180

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v9, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v3, 0x5

    iput v3, v1, Lk4/c;->r:I

    invoke-virtual {v0, v7, v2, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_17

    goto :goto_13

    :cond_17
    move-object v0, v8

    :goto_13
    if-ne v0, v10, :cond_18

    goto :goto_16

    :cond_18
    :goto_14
    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v9, v1, Lk4/c;->u:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->s:Ljava/lang/Object;

    iput-object v9, v1, Lk4/c;->t:Ljava/io/Serializable;

    const/4 v2, 0x6

    iput v2, v1, Lk4/c;->r:I

    sget-object v2, Lk4/k;->g:LX/g;

    invoke-virtual {v0, v2, v4, v1}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_19

    goto :goto_15

    :cond_19
    move-object v0, v8

    :goto_15
    if-ne v0, v10, :cond_1a

    :goto_16
    move-object v8, v10

    :cond_1a
    :goto_17
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
