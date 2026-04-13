.class public final LM3/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseCrashlytics"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)LM3/b;
    .locals 8

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p1}, Lp/e;->a(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, LM3/c;->e:Ljava/lang/Object;

    check-cast v3, LM3/a;

    invoke-virtual {v3}, LM3/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    iget-object v5, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v5, LL2/o;

    invoke-virtual {v5, v3}, LL2/o;->A(Lorg/json/JSONObject;)LM3/b;

    move-result-object v5

    const-string v6, "Loaded cached settings: "

    invoke-static {v3, v6}, LM3/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v3, p0, LM3/c;->d:Ljava/lang/Object;

    check-cast v3, Lu2/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, p1}, Lp/e;->a(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v3, v5, LM3/b;->c:J

    cmp-long p1, v3, v6

    if-gez p1, :cond_0

    const-string p1, "Cached settings have expired."

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string p1, "Returning cached settings."

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-object v5

    :goto_0
    move-object v2, v5

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_2
    const-string p1, "No cached settings data found."

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v2

    :goto_1
    const-string v1, "Failed to get cached settings"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public b()LM3/b;
    .locals 1

    iget-object v0, p0, LM3/c;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM3/b;

    return-object v0
.end method

.method public c(Lj2/j;I)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v2, v3, Lj2/j;->b:[B

    iget-object v0, v1, LM3/c;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lr2/c;

    iget-object v0, v1, LM3/c;->b:Ljava/lang/Object;

    check-cast v0, Lk2/d;

    iget-object v5, v3, Lj2/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lk2/d;->a(Ljava/lang/String;)Lk2/e;

    move-result-object v5

    move-object v8, v4

    move-object v9, v5

    const-wide/16 v4, 0x0

    :goto_0
    new-instance v0, Lp2/g;

    const/4 v10, 0x0

    invoke-direct {v0, v1, v3, v10}, Lp2/g;-><init>(LM3/c;Lj2/j;I)V

    move-object v11, v8

    check-cast v11, Lq2/h;

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lp2/g;

    const/4 v12, 0x1

    invoke-direct {v0, v1, v3, v12}, Lp2/g;-><init>(LM3/c;Lj2/j;I)V

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-wide/16 v6, -0x1

    if-nez v9, :cond_1

    const-string v10, "Uploader"

    const-string v14, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v10, v14, v3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Lk2/a;

    invoke-direct {v10, v0, v6, v7}, Lk2/a;-><init>(IJ)V

    move-object/from16 v19, v2

    move-wide/from16 v30, v4

    :goto_1
    const/4 v1, 0x2

    goto/16 :goto_14

    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lq2/b;

    iget-object v15, v15, Lq2/b;->c:Lj2/i;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v15, "proto"

    if-eqz v2, :cond_3

    iget-object v12, v1, LM3/c;->i:Ljava/lang/Object;

    check-cast v12, Lq2/c;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LA3/d;

    const/16 v6, 0x1d

    invoke-direct {v0, v6, v12}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    new-instance v6, Lj2/h;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lj2/h;->f:Ljava/util/HashMap;

    iget-object v7, v1, LM3/c;->g:Ljava/lang/Object;

    check-cast v7, Ls2/a;

    invoke-interface {v7}, Ls2/a;->f()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lj2/h;->d:Ljava/lang/Long;

    iget-object v7, v1, LM3/c;->h:Ljava/lang/Object;

    check-cast v7, Ls2/a;

    invoke-interface {v7}, Ls2/a;->f()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lj2/h;->e:Ljava/lang/Long;

    const-string v7, "GDT_CLIENT_METRICS"

    iput-object v7, v6, Lj2/h;->a:Ljava/lang/String;

    new-instance v7, Lj2/m;

    new-instance v12, Lg2/b;

    invoke-direct {v12, v15}, Lg2/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lj2/o;->a:LJ/l;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v10, v0, v1}, LJ/l;->F(Lm2/a;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v7, v12, v0}, Lj2/m;-><init>(Lg2/b;[B)V

    iput-object v7, v6, Lj2/h;->c:Lj2/m;

    invoke-virtual {v6}, Lj2/h;->b()Lj2/i;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Lh2/c;

    invoke-virtual {v1, v0}, Lh2/c;->a(Lj2/i;)Lj2/i;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v9

    check-cast v0, Lh2/c;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Lj2/i;

    iget-object v12, v10, Lj2/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v19, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move-object/from16 v19, v2

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v2, v19

    goto :goto_3

    :cond_5
    move-object/from16 v19, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v12, "CctTransportBackend"

    if-eqz v6, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lj2/i;

    sget-object v18, Li2/J;->b:Li2/J;

    iget-object v10, v0, Lh2/c;->f:Ls2/a;

    invoke-interface {v10}, Ls2/a;->f()J

    move-result-wide v21

    iget-object v10, v0, Lh2/c;->e:Ls2/a;

    invoke-interface {v10}, Ls2/a;->f()J

    move-result-wide v23

    const-string v10, "sdk-version"

    invoke-virtual {v14, v10}, Lj2/i;->b(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v10, "model"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v10, "hardware"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v10, "device"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v10, "product"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v10, "os-uild"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v10, "manufacturer"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v10, "fingerprint"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v10, "country"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v10, "locale"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v10, "mcc_mnc"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v10, "application_build"

    invoke-virtual {v14, v10}, Lj2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    new-instance v25, Li2/l;

    invoke-direct/range {v25 .. v37}, Li2/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v25

    new-instance v14, Li2/n;

    invoke-direct {v14, v10}, Li2/n;-><init>(Li2/l;)V

    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v26, v10

    const/16 v27, 0x0

    goto :goto_6

    :catch_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v27, v10

    const/16 v26, 0x0

    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Lj2/i;

    move-object/from16 v29, v1

    iget-object v1, v7, Lj2/i;->c:Lj2/m;

    iget-object v3, v7, Lj2/i;->j:[B

    move-object/from16 v20, v3

    iget-object v3, v1, Lj2/m;->a:Lg2/b;

    iget-object v1, v1, Lj2/m;->b:[B

    move-wide/from16 v30, v4

    new-instance v4, Lg2/b;

    invoke-direct {v4, v15}, Lg2/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lg2/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, LM3/c;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, LM3/c;->e:Ljava/lang/Object;

    goto :goto_8

    :cond_6
    new-instance v4, Lg2/b;

    const-string v5, "json"

    invoke-direct {v4, v5}, Lg2/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lg2/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, LM3/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, LM3/c;->f:Ljava/lang/Object;

    move-object v3, v1

    :goto_8
    iget-wide v4, v7, Lj2/i;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, LM3/c;->a:Ljava/lang/Object;

    iget-wide v4, v7, Lj2/i;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, LM3/c;->d:Ljava/lang/Object;

    const-string v1, "tz-offset"

    iget-object v4, v7, Lj2/i;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-wide/16 v4, 0x0

    goto :goto_9

    :cond_7
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, LM3/c;->g:Ljava/lang/Object;

    const-string v1, "net-type"

    invoke-virtual {v7, v1}, Lj2/i;->b(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Li2/H;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li2/H;

    const-string v4, "mobile-subtype"

    invoke-virtual {v7, v4}, Lj2/i;->b(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Li2/G;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li2/G;

    new-instance v5, Li2/v;

    invoke-direct {v5, v1, v4}, Li2/v;-><init>(Li2/H;Li2/G;)V

    iput-object v5, v3, LM3/c;->h:Ljava/lang/Object;

    iget-object v1, v7, Lj2/i;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    iput-object v1, v3, LM3/c;->b:Ljava/lang/Object;

    :cond_8
    iget-object v1, v7, Lj2/i;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    new-instance v4, Li2/q;

    invoke-direct {v4, v1}, Li2/q;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Li2/r;

    invoke-direct {v1, v4}, Li2/r;-><init>(Li2/q;)V

    sget-object v4, Li2/z;->b:Li2/z;

    new-instance v4, Li2/o;

    invoke-direct {v4, v1}, Li2/o;-><init>(Li2/r;)V

    iput-object v4, v3, LM3/c;->c:Ljava/lang/Object;

    :cond_9
    iget-object v1, v7, Lj2/i;->i:[B

    if-nez v1, :cond_a

    if-eqz v20, :cond_d

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    if-eqz v20, :cond_c

    move-object/from16 v4, v20

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :goto_b
    new-instance v5, Li2/p;

    invoke-direct {v5, v1, v4}, Li2/p;-><init>([B[B)V

    iput-object v5, v3, LM3/c;->i:Ljava/lang/Object;

    :cond_d
    iget-object v1, v3, LM3/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_e

    const-string v1, " eventTimeMs"

    goto :goto_c

    :cond_e
    const-string v1, ""

    :goto_c
    iget-object v4, v3, LM3/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_f

    const-string v4, " eventUptimeMs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    iget-object v4, v3, LM3/c;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    const-string v4, " timezoneOffsetSeconds"

    invoke-static {v1, v4}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v32, Li2/s;

    iget-object v1, v3, LM3/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    iget-object v1, v3, LM3/c;->b:Ljava/lang/Object;

    move-object/from16 v35, v1

    check-cast v35, Ljava/lang/Integer;

    iget-object v1, v3, LM3/c;->c:Ljava/lang/Object;

    move-object/from16 v36, v1

    check-cast v36, Li2/o;

    iget-object v1, v3, LM3/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    iget-object v1, v3, LM3/c;->e:Ljava/lang/Object;

    move-object/from16 v39, v1

    check-cast v39, [B

    iget-object v1, v3, LM3/c;->f:Ljava/lang/Object;

    move-object/from16 v40, v1

    check-cast v40, Ljava/lang/String;

    iget-object v1, v3, LM3/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    iget-object v1, v3, LM3/c;->h:Ljava/lang/Object;

    move-object/from16 v43, v1

    check-cast v43, Li2/v;

    iget-object v1, v3, LM3/c;->i:Ljava/lang/Object;

    move-object/from16 v44, v1

    check-cast v44, Li2/p;

    invoke-direct/range {v32 .. v44}, Li2/s;-><init>(JLjava/lang/Integer;Li2/A;J[BLjava/lang/String;JLi2/I;Li2/B;)V

    move-object/from16 v1, v32

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_d
    move-object/from16 v3, p1

    move-object/from16 v1, v29

    move-wide/from16 v4, v30

    goto/16 :goto_7

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {v12}, Lcom/bumptech/glide/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Received event of unsupported encoding "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Skipping..."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_14
    move-object/from16 v29, v1

    move-wide/from16 v30, v4

    new-instance v20, Li2/t;

    move-object/from16 v28, v10

    move-object/from16 v25, v14

    invoke-direct/range {v20 .. v28}, Li2/t;-><init>(JJLi2/n;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move-object/from16 v1, v29

    goto/16 :goto_5

    :cond_15
    move-wide/from16 v30, v4

    const/4 v4, 0x5

    new-instance v1, Li2/m;

    invoke-direct {v1, v2}, Li2/m;-><init>(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lh2/c;->d:Ljava/net/URL;

    if-eqz v19, :cond_17

    :try_start_2
    invoke-static/range {v19 .. v19}, Lh2/a;->a([B)Lh2/a;

    move-result-object v3

    iget-object v5, v3, Lh2/a;->b:Ljava/lang/String;

    if-eqz v5, :cond_16

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    iget-object v3, v3, Lh2/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_18

    invoke-static {v3}, Lh2/c;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    new-instance v0, Lk2/a;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lk2/a;-><init>(IJ)V

    :goto_f
    move-object v10, v0

    goto/16 :goto_1

    :cond_17
    const/4 v5, 0x0

    :cond_18
    :goto_10
    :try_start_3
    new-instance v3, LJ/l;

    const/16 v6, 0x14

    invoke-direct {v3, v2, v1, v5, v6}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, LA3/d;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, LA3/d;-><init>(ILjava/lang/Object;)V

    move v7, v4

    :cond_19
    invoke-virtual {v1, v3}, LA3/d;->l(LJ/l;)Lh2/b;

    move-result-object v0

    iget-object v2, v0, Lh2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/URL;

    if-eqz v2, :cond_1a

    const-string v4, "Following redirect to: %s"

    invoke-static {v12, v4, v2}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, LJ/l;

    iget-object v5, v3, LJ/l;->s:Ljava/lang/Object;

    check-cast v5, Li2/m;

    iget-object v3, v3, LJ/l;->q:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v6}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v3, v4

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1b

    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    if-ge v7, v2, :cond_19

    :cond_1b
    iget v1, v0, Lh2/b;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1c

    iget-wide v0, v0, Lh2/b;->b:J

    new-instance v2, Lk2/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Lk2/a;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v2

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_13

    :cond_1c
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_1d

    const/16 v0, 0x194

    if-ne v1, v0, :cond_1e

    :cond_1d
    const-wide/16 v2, -0x1

    goto :goto_12

    :cond_1e
    const/16 v0, 0x190

    if-ne v1, v0, :cond_1f

    :try_start_4
    new-instance v0, Lk2/a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    :try_start_5
    invoke-direct {v0, v1, v2, v3}, Lk2/a;-><init>(IJ)V

    goto :goto_f

    :catch_4
    move-exception v0

    const-wide/16 v2, -0x1

    goto :goto_13

    :cond_1f
    const-wide/16 v2, -0x1

    new-instance v0, Lk2/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lk2/a;-><init>(IJ)V

    goto :goto_f

    :goto_12
    new-instance v0, Lk2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lk2/a;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :goto_13
    const-string v1, "Could not make request to the backend"

    invoke-static {v12, v1, v0}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lk2/a;

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lk2/a;-><init>(IJ)V

    move-object v10, v0

    :goto_14
    iget v0, v10, Lk2/a;->a:I

    if-ne v0, v1, :cond_20

    new-instance v0, Lp2/h;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v2, v13

    move-wide/from16 v4, v30

    invoke-direct/range {v0 .. v5}, Lp2/h;-><init>(LM3/c;Ljava/lang/Iterable;Lj2/j;J)V

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    iget-object v0, v1, LM3/c;->d:Ljava/lang/Object;

    check-cast v0, LJ/l;

    const/4 v2, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, v3, v4, v2}, LJ/l;->a0(Lj2/j;IZ)V

    return-void

    :cond_20
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v13

    move-wide/from16 v4, v30

    const/4 v2, 0x1

    new-instance v7, LD0/f;

    const/16 v12, 0xc

    invoke-direct {v7, v1, v12, v6}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, v7}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    if-ne v0, v2, :cond_21

    iget-wide v6, v10, Lk2/a;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-eqz v19, :cond_24

    new-instance v0, Lp2/f;

    invoke-direct {v0, v2, v1}, Lp2/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    goto :goto_16

    :cond_21
    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq2/b;

    iget-object v6, v6, Lq2/b;->c:Lj2/i;

    iget-object v6, v6, Lj2/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_22
    const/16 v16, 0x1

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_23
    new-instance v2, LD0/f;

    const/16 v6, 0xd

    invoke-direct {v2, v1, v6, v0}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, v2}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    :cond_24
    :goto_16
    move-object/from16 v2, v19

    goto/16 :goto_0

    :cond_25
    new-instance v0, LB3/a;

    invoke-direct {v0, v4, v5, v1, v3}, LB3/a;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    return-void
.end method
