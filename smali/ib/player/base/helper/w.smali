.class public final Lib/player/base/helper/w;
.super Ljava/lang/Object;


# static fields
.field public static c:Lib/player/base/helper/w;

.field public static d:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/gson/j;

    invoke-direct {p2}, Lcom/google/gson/j;-><init>()V

    iput-object p2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    const-string p2, "PREF"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lio/realm/I;

    invoke-direct {p2}, Lio/realm/I;-><init>()V

    const-string v0, "MTV.realm"

    iput-object v0, p2, Lio/realm/I;->b:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p2, Lio/realm/I;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p2, Lio/realm/I;->d:Z

    iput-boolean v0, p2, Lio/realm/I;->k:Z

    invoke-virtual {p2}, Lio/realm/I;->a()Lio/realm/J;

    move-result-object p2

    invoke-static {p2}, Lio/realm/y;->D(Lio/realm/J;)Lio/realm/y;

    move-result-object p2

    iput-object p2, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    new-instance p2, Lib/player/base/helper/w;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static x0(Landroid/content/Context;)Lib/player/base/helper/w;
    .locals 2

    sget-object v0, Lib/player/base/helper/w;->c:Lib/player/base/helper/w;

    if-nez v0, :cond_0

    invoke-static {p0}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object v0

    sget-object v1, Lio/realm/y;->A:Ljava/lang/Object;

    const-class v1, Lio/realm/y;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lio/realm/y;->E(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Lib/player/base/helper/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lib/player/base/helper/w;->c:Lib/player/base/helper/w;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lib/player/base/helper/w;->c:Lib/player/base/helper/w;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 4

    const-string v0, "home_vod_category"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public B()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "is_m3u"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public C()Ljava/util/List;
    .locals 3

    const-string v0, "invisible_live_categories"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[]"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/j;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 3

    const-string v0, "invisible_series_categories"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/l;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 3

    const-string v0, "invisible_vod_categories"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/k;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public F()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "is_allow_protocol"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "language_code"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public H()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "language_model"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/q;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public I()J
    .locals 4

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "last_playlist_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public J()Ljava/util/List;
    .locals 3

    const-string v0, "live_fav_names"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/f;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public K()Ljava/util/List;
    .locals 3

    const-string v0, "live_lock_names"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/e;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public L()I
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "live_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "mac_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 3

    const-string v0, "my_group"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/r;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public O(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/j;

    new-instance v1, Lib/player/base/helper/s;

    invoke-direct {v1}, Lp4/a;-><init>()V

    iget-object v1, v1, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public P()Ljava/lang/String;
    .locals 3

    const-string v0, "0000"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "parent_control"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "password"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method

.method public R()Ljava/util/List;
    .locals 3

    const-string v0, "series_recent_models"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/i;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public S()Ljava/util/List;
    .locals 3

    const-string v0, "vod_resume_model"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/o;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "series_category"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/v;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 3

    const-string v0, "series_fav_names"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/h;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public V()Ljava/util/List;
    .locals 3

    const-string v0, "episode_resume_model"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/p;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "server_url"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 3

    const-string v0, "#00ffffff"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "subtitle_bg_color"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    const-string v0, "#ffffff"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "subtitle_color"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public Z()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "subtitle_font"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZJILib/player/base/helper/x;)V
    .locals 8

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/z;

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-wide v2, p4

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lib/player/base/helper/z;-><init>(JLjava/lang/String;Ljava/lang/String;IZ)V

    new-instance p1, LA3/d;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p7}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    return-void
.end method

.method public a0()Lib/player/models/SubTitleUserModel;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "subtitle_login"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    const-class v3, Lib/player/models/SubTitleUserModel;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/SubTitleUserModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;ZLib/player/base/helper/x;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/y;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p2}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p1, LA3/d;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p3}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    return-void
.end method

.method public b0()I
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "update_period"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;ZLib/player/base/helper/x;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/y;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1, p2}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p1, LA3/d;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p3}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    return-void
.end method

.method public c0()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "user_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public d(Ljava/lang/String;ZLib/player/base/helper/x;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/y;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p2}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p1, LA3/d;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p3}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    return-void
.end method

.method public d0()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "user_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method

.method public e(Ljava/lang/String;ZIILib/player/base/helper/x;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/A;

    invoke-direct {v1, p3, p4, p1, p2}, Lib/player/base/helper/A;-><init>(IILjava/lang/String;Z)V

    new-instance p1, LA3/d;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p5}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    return-void
.end method

.method public e0()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "vod_category"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/u;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lib/player/base/helper/w;->g(Ljava/lang/String;Ljava/util/List;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object p1

    return-object p1
.end method

.method public f0()Ljava/util/List;
    .locals 3

    const-string v0, "vod_fav_names"

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/g;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/util/List;)Lio/realm/RealmQuery;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    const-class v1, Lib/player/models/EPGChannel;

    invoke-virtual {v0, v1}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v0, v1, p2, p1}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public g0(Lib/player/models/AppInfoModel;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    invoke-virtual {v1, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "APP_INFO_MODEL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_favorite"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h0(I)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "category_pos"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public i()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/MovieModel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_favorite"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/MovieModel;

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i0(I)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel_pos"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public j()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/SeriesModel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_favorite"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/SeriesModel;

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public k(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/T;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object p1

    return-object p1
.end method

.method public k0(Z)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_m3u"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;
    .locals 10

    iget-object v0, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/w;

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    if-eqz p3, :cond_0

    const-string v2, "category_name"

    goto :goto_0

    :cond_0
    const-string v2, "category_id"

    :goto_0
    const/4 v3, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v4, "!@#%"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fav_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "resume_id"

    const/4 v7, 0x0

    const-class v8, Lib/player/models/EPGChannel;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v8}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    const-string v1, "is_favorite"

    invoke-virtual {p3, v1}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v8}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    const-string v1, "is_recent"

    invoke-virtual {p3, v1}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    const-string v1, "recent_pos"

    invoke-virtual {p3, v5, v1}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    invoke-virtual {p3}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v9, "all_id"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v8}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    invoke-virtual {p3}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v9, "lock_id"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v8}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p3

    const-string v1, "is_locked"

    invoke-virtual {p3, v1}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v8}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    invoke-virtual {p3, v0, v5, p2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    if-eq p4, v3, :cond_8

    if-eq p4, v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p3, v5, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p3, v3, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz p5, :cond_a

    const-string p1, "tv_archive"

    const-string p2, "1"

    invoke-virtual {p3, p1, p2}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object p3
.end method

.method public l0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public m()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_locked"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    invoke-virtual {v1, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "live_category"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public n(Ljava/lang/String;)Lib/player/models/MovieModel;
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    const-class v1, Lib/player/models/MovieModel;

    const-string v2, "stream_id"

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    return-object p1
.end method

.method public n0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "live_fav_names"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public o(Ljava/lang/String;)Lib/player/models/MovieModel;
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    const-class v1, Lib/player/models/MovieModel;

    const-string v2, "name"

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    return-object p1
.end method

.method public o0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "live_lock_names"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public p(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;
    .locals 8

    iget-object v0, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/w;

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    if-eqz p3, :cond_0

    const-string v2, "category_name"

    goto :goto_0

    :cond_0
    const-string v2, "category_id"

    :goto_0
    const/4 v3, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v4, "!@#%"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resume_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-class v6, Lib/player/models/MovieModel;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string p3, "is_recent"

    invoke-virtual {p1, p3}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->E()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "all_id"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->E()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "fav_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string p3, "is_favorite"

    invoke-virtual {p1, p3}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->E()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p3, p1, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p4, v3, :cond_9

    if-eq p4, v1, :cond_8

    const/4 p2, 0x3

    if-eq p4, p2, :cond_7

    const/4 p2, 0x4

    if-eq p4, p2, :cond_6

    invoke-virtual {p3}, Lio/realm/d;->b()V

    const-string p2, "num"

    invoke-virtual {p1, v3, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_6
    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_7
    invoke-virtual {p3}, Lio/realm/d;->b()V

    invoke-virtual {p1, v3, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_8
    const-string p2, "rating"

    invoke-virtual {p1, v1, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_9
    const-string p2, "added"

    invoke-virtual {p1, v1, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1
.end method

.method public p0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "series_recent_models"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public q()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/EPGChannel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_recent"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public q0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vod_resume_model"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public r()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/MovieModel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "is_recent"

    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    new-instance v2, Lio/realm/r;

    invoke-direct {v2, v1}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/MovieModel;

    new-instance v3, Lib/player/models/ResumeModel;

    invoke-direct {v3}, Lib/player/models/ResumeModel;-><init>()V

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lib/player/models/ResumeModel;->setStream_id(Ljava/lang/String;)V

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lib/player/models/ResumeModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getPro()I

    move-result v4

    invoke-virtual {v3, v4}, Lib/player/models/ResumeModel;->setPro(I)V

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lib/player/models/ResumeModel;->setLast_position(J)V

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lib/player/models/ResumeModel;->setTmdb_id(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public r0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    invoke-virtual {v1, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "series_category"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public s(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    const-class v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v0, v1}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "series_name"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lib/player/base/helper/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lib/player/models/EpisodeModel;

    invoke-virtual {v3}, Lib/player/models/EpisodeModel;->getSeason_name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lib/player/base/helper/w;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lib/player/base/helper/w;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/TreeSet;

    sget-object v0, Lib/player/base/helper/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lib/player/base/helper/w;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lib/player/models/Season;

    invoke-direct {v4}, Lib/player/models/Season;-><init>()V

    invoke-virtual {v4, v2}, Lib/player/models/Season;->setName(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EpisodeModel;

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lib/player/models/Season;->setCategory_name(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lib/player/models/Season;->setEpisodeModels(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public s0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "series_fav_names"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public t(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;
    .locals 8

    iget-object v0, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/w;

    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    if-eqz p3, :cond_0

    const-string v2, "category_name"

    goto :goto_0

    :cond_0
    const-string v2, "category_id"

    :goto_0
    const/4 v3, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v4, "!@#%"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "all_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-class v6, Lib/player/models/SeriesModel;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->D()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "fav_id"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string p3, "is_favorite"

    invoke-virtual {p1, p3}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->D()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "resume_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string p3, "is_recent"

    invoke-virtual {p1, p3}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v0}, Lib/player/base/helper/w;->D()Ljava/util/List;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v6}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p3, p1, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p4, v3, :cond_9

    if-eq p4, v1, :cond_8

    const/4 p2, 0x3

    if-eq p4, p2, :cond_7

    const/4 p2, 0x4

    if-eq p4, p2, :cond_6

    invoke-virtual {p3}, Lio/realm/d;->b()V

    const-string p2, "num"

    invoke-virtual {p1, v3, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_6
    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_7
    invoke-virtual {p3}, Lio/realm/d;->b()V

    invoke-virtual {p1, v3, v0}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_8
    const-string p2, "rating"

    invoke-virtual {p1, v1, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1

    :cond_9
    const-string p2, "last_modified"

    invoke-virtual {p1, v1, p2}, Lio/realm/RealmQuery;->l(ILjava/lang/String;)V

    return-object p1
.end method

.method public t0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "episode_resume_model"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public u()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "live_category"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/t;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public u0(I)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_font"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public v()Lib/player/models/AppInfoModel;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "APP_INFO_MODEL"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    const-class v3, Lib/player/models/AppInfoModel;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/AppInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public v0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    invoke-virtual {v1, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "vod_category"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public w()I
    .locals 4

    const-string v0, "channel_pos"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public w0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vod_fav_names"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/j;

    invoke-virtual {v2, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v2, "device_type"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "episode_models"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/j;

    new-instance v2, Lib/player/base/helper/m;

    invoke-direct {v2}, Lp4/a;-><init>()V

    iget-object v2, v2, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public z()I
    .locals 4

    const-string v0, "home_series_category"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method
