.class public final synthetic Lib/player/base/a;
.super Ljava/lang/Object;

# interfaces
.implements Lt4/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/base/k;


# direct methods
.method public native synthetic constructor <init>(Lib/player/base/k;I)V
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lib/player/base/a;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lib/player/base/a;->q:Lib/player/base/k;

    invoke-virtual {v0}, Lib/player/base/k;->H()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lib/player/base/a;->q:Lib/player/base/k;

    iget-boolean v1, v0, Lib/player/base/k;->W:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lib/player/base/k;->A(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getUser_incorrect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {v2}, Lib/player/base/k;->X(Z)V

    return-void

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lib/player/base/k;->X(Z)V

    iget-object v0, p0, Lib/player/base/a;->q:Lib/player/base/k;

    iget-boolean v1, v0, Lib/player/base/k;->W:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lib/player/base/k;->A(Z)V

    :cond_1
    return-void

    :pswitch_3
    iget-object v0, p0, Lib/player/base/a;->q:Lib/player/base/k;

    invoke-virtual {v0}, Lib/player/base/k;->C()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j(Ljava/lang/Object;)V
    .locals 14

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lib/player/base/a;->q:Lib/player/base/k;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v7}, Lib/player/base/k;->A(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v2, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getUser_incorrect()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, v2, Lib/player/base/k;->W:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ4/a;

    iget-object v6, v4, LQ4/a;->d:Ljava/lang/String;

    invoke-virtual {v4}, LQ4/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "movie/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "=movie"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "==movie"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "movies/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "vod/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "video/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "vod"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "movie"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const-string v10, "series/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "series"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v6, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v9

    :goto_3
    if-eq v6, v9, :cond_1

    if-nez v6, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    if-ne v6, v5, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    sget-object p1, Lib/player/app/MyApp;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    check-cast p1, Lib/player/app/MyApp;

    iput-object v0, p1, Lib/player/app/MyApp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    check-cast p1, Lib/player/app/MyApp;

    iput-object v1, p1, Lib/player/app/MyApp;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    check-cast p1, Lib/player/app/MyApp;

    iput-object v3, p1, Lib/player/app/MyApp;->r:Ljava/util/ArrayList;

    iget-object p1, v2, Lib/player/base/k;->R:Lio/realm/y;

    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v3

    iget-object p1, v2, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->J()Ljava/util/List;

    move-result-object v4

    iget-object p1, v2, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->K()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lib/player/base/k;->f0:Z

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    iget-object v6, v2, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->I()J

    move-result-wide v8

    iget-object v6, v2, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->b0()I

    move-result v6

    int-to-long v10, v6

    const-wide/32 v12, 0x11940

    mul-long/2addr v10, v12

    add-long/2addr v10, v8

    cmp-long v0, v0, v10

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean p1, v2, Lib/player/base/k;->W:Z

    if-nez p1, :cond_d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Lib/player/base/k;->E(Ljava/util/List;)V

    goto :goto_5

    :cond_b
    :goto_4
    iget-object v0, v2, Lib/player/base/k;->Z:Lt4/a;

    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lt4/i;->f:Z

    if-nez v1, :cond_c

    iput-boolean v5, v0, Lt4/i;->g:Z

    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_c
    new-instance v0, Lt4/a;

    invoke-direct {v0, v2, v7}, Lt4/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, v2, Lib/player/base/k;->Z:Lt4/a;

    new-instance v1, Lib/player/base/f;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lib/player/base/f;-><init>(Lib/player/base/k;Lio/realm/T;Ljava/util/List;Ljava/util/List;I)V

    iput-object v1, v0, Lt4/i;->h:Lt4/h;

    new-instance p1, Lib/player/base/a;

    const/4 v1, 0x5

    invoke-direct {p1, v2, v1}, Lib/player/base/a;-><init>(Lib/player/base/k;I)V

    iput-object p1, v0, Lt4/i;->i:Lib/player/base/a;

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_d
    :goto_5
    invoke-static {v7}, Lib/player/base/k;->X(Z)V

    return-void
.end method
