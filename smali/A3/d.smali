.class public final synthetic LA3/d;
.super Ljava/lang/Object;

# interfaces
.implements Ly3/d;
.implements Landroidx/fragment/app/O;
.implements LX3/a;
.implements LD0/q;
.implements LL2/a;
.implements Lz4/A;
.implements LI0/i;
.implements Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;
.implements Lk0/h;
.implements Lio/realm/x;
.implements Lz4/I;
.implements Ll0/p;
.implements Lorg/apache/hc/core5/function/Decorator;
.implements Lorg/apache/hc/core5/http/io/HttpFilterChain;
.implements Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;
.implements Lorg/apache/hc/core5/http/nio/AsyncFilterChain;
.implements Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;
.implements Lr2/b;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA3/d;->b:I

    iput-object p2, p0, LA3/d;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesPlayerActivity;

    iput p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->E0:I

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFill()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getStringDefaultAlt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv4/c;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/high16 v4, 0x3fc00000    # 1.5f

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    const v4, 0x3faaaaab

    goto :goto_0

    :cond_2
    const v4, 0x3fcccccd    # 1.6f

    goto :goto_0

    :cond_3
    const v4, 0x3fe38e39

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, v0, Lib/player/base/l;->P:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v4}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object p1, v0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, v3}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    iget-object p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->i0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->i0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->I0:Lib/player/pages/series/o;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v5, v0, Lib/player/pages/series/SeriesPlayerActivity;->O0:I

    new-instance p1, Lib/player/pages/series/o;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lib/player/pages/series/o;-><init>(Lib/player/pages/series/SeriesPlayerActivity;I)V

    iput-object p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->I0:Lib/player/pages/series/o;

    invoke-virtual {p1}, Lib/player/pages/series/o;->run()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, LA3/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lp3/E;

    check-cast p1, Lf1/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lf1/h;

    check-cast p1, Lf1/a;

    new-instance v1, Lf1/g;

    iget-wide v2, p1, Lf1/a;->b:J

    iget-object v4, p1, Lf1/a;->a:Lp3/H;

    iget-wide v5, p1, Lf1/a;->c:J

    invoke-static {v4, v5, v6}, Lu2/j;->n(Lp3/H;J)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lf1/g;-><init>(J[B)V

    iget-object v2, v0, Lf1/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lf1/h;->j:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lf1/a;->b:J

    cmp-long p1, v4, v2

    if-ltz p1, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Lf1/h;->a(Lf1/g;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public b(JLk0/u;)V
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lo1/H;

    iget-object v0, v0, Lo1/H;->b:[LI0/L;

    invoke-static {p1, p2, p3, v0}, LI0/b;->d(JLk0/u;[LI0/L;)V

    return-void
.end method

.method public c(LD5/g;)Ljava/lang/Object;
    .locals 56

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, LA3/d;->b:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, LA3/d;->q:Ljava/lang/Object;

    check-cast v2, Ly3/q;

    new-instance v3, LW3/d;

    const-class v4, Landroid/content/Context;

    invoke-virtual {v0, v4}, LD5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-class v5, Lv3/e;

    invoke-virtual {v0, v5}, LD5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv3/e;

    invoke-virtual {v5}, Lv3/e;->d()Ljava/lang/String;

    move-result-object v5

    const-class v6, LW3/e;

    invoke-static {v6}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v6

    invoke-virtual {v0, v6}, LD5/g;->f(Ly3/q;)Ljava/util/Set;

    move-result-object v6

    const-class v7, Le4/b;

    invoke-virtual {v0, v7}, LD5/g;->b(Ljava/lang/Class;)LX3/b;

    move-result-object v7

    invoke-virtual {v0, v2}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    invoke-direct/range {v3 .. v8}, LW3/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LX3/b;Ljava/util/concurrent/Executor;)V

    return-object v3

    :pswitch_0
    iget-object v2, v1, LA3/d;->q:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    sget v3, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-class v5, Lv3/e;

    invoke-virtual {v0, v5}, LD5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lv3/e;

    const-class v5, LY3/e;

    invoke-virtual {v0, v5}, LD5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LY3/e;

    const-class v6, LB3/b;

    invoke-virtual {v0, v6}, LD5/g;->q(Ljava/lang/Class;)Ly3/o;

    move-result-object v6

    const-class v8, Lw3/a;

    invoke-virtual {v0, v8}, LD5/g;->q(Ljava/lang/Class;)Ly3/o;

    move-result-object v8

    const-class v9, Lf4/a;

    invoke-virtual {v0, v9}, LD5/g;->q(Ljava/lang/Class;)Ly3/o;

    move-result-object v9

    iget-object v10, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Ly3/q;

    invoke-virtual {v0, v10}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ExecutorService;

    iget-object v11, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Ly3/q;

    invoke-virtual {v0, v11}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/ExecutorService;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Ly3/q;

    invoke-virtual {v0, v2}, LD5/g;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    const-string v2, ""

    const-string v12, "FirebaseCrashlytics"

    invoke-virtual {v7}, Lv3/e;->a()V

    iget-object v13, v7, Lv3/e;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Firebase Crashlytics 19.4.3 for "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v12, v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, LF3/d;

    invoke-direct {v1, v10, v11}, LF3/d;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    new-instance v10, LK3/c;

    invoke-direct {v10, v13}, LK3/c;-><init>(Landroid/content/Context;)V

    new-instance v11, LE1/E;

    invoke-direct {v11, v7}, LE1/E;-><init>(Lv3/e;)V

    new-instance v15, LE3/w;

    invoke-direct {v15, v13, v14, v5, v11}, LE3/w;-><init>(Landroid/content/Context;Ljava/lang/String;LY3/e;LE1/E;)V

    new-instance v5, LB3/b;

    invoke-direct {v5, v6}, LB3/b;-><init>(Ly3/o;)V

    new-instance v6, LA3/c;

    invoke-direct {v6, v8}, LA3/c;-><init>(Ly3/o;)V

    new-instance v14, LE3/j;

    invoke-direct {v14, v11, v10}, LE3/j;-><init>(LE1/E;LK3/c;)V

    sget-object v8, Lh4/c;->a:Lh4/c;

    const-string v8, "Subscriber "

    move-object/from16 v16, v1

    const-string v1, "SessionsDependencies"

    move-wide/from16 v26, v3

    sget-object v3, Lh4/d;->b:Lh4/d;

    sget-object v4, Lh4/c;->a:Lh4/c;

    invoke-static {v3}, Lh4/c;->a(Lh4/d;)Lh4/a;

    move-result-object v4

    move-object/from16 v17, v5

    iget-object v5, v4, Lh4/a;->b:LE3/j;

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v21, v15

    goto :goto_1

    :cond_0
    iput-object v14, v4, Lh4/a;->b:LE3/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " registered."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lh4/a;->a:Lu5/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lu5/d;->f(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    new-instance v15, Le4/c;

    const/4 v1, 0x5

    invoke-direct {v15, v1, v9}, Le4/c;-><init>(ILjava/lang/Object;)V

    new-instance v4, LE3/q;

    move-object v5, v13

    move-object v13, v10

    move-object v10, v11

    new-instance v11, LA3/a;

    invoke-direct {v11, v6}, LA3/a;-><init>(LA3/c;)V

    move-object v8, v12

    new-instance v12, LA3/a;

    invoke-direct {v12, v6}, LA3/a;-><init>(LA3/c;)V

    move-object v6, v4

    move-object v4, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v21

    invoke-direct/range {v6 .. v16}, LE3/q;-><init>(Lv3/e;LE3/w;LB3/b;LE1/E;LA3/a;LA3/a;LK3/c;LE3/j;Le4/c;LF3/d;)V

    move-object v8, v6

    move-object/from16 v6, v16

    iget-object v9, v8, LE3/q;->n:LF3/d;

    invoke-virtual {v7}, Lv3/e;->a()V

    iget-object v7, v7, Lv3/e;->c:Lv3/g;

    iget-object v7, v7, Lv3/g;->b:Ljava/lang/String;

    const-string v11, "com.google.firebase.crashlytics.mapping_file_id"

    const-string v12, "string"

    invoke-static {v5, v11, v12}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "com.crashlytics.android.build_id"

    invoke-static {v5, v11, v12}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_2
    move-object v15, v3

    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "com.google.firebase.crashlytics.build_ids_lib"

    const-string v14, "array"

    invoke-static {v5, v12, v14}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const-string v1, "com.google.firebase.crashlytics.build_ids_arch"

    invoke-static {v5, v1, v14}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "com.google.firebase.crashlytics.build_ids_build_id"

    invoke-static {v5, v3, v14}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v12, :cond_3

    if-eqz v1, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v29, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v14, v12

    move-object/from16 v29, v7

    array-length v7, v3

    if-ne v14, v7, :cond_5

    array-length v7, v1

    array-length v14, v3

    if-eq v7, v14, :cond_6

    :cond_5
    move-object/from16 v40, v8

    move-object/from16 v39, v9

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_3
    array-length v14, v3

    if-ge v7, v14, :cond_7

    new-instance v14, LE3/d;

    move/from16 v16, v7

    aget-object v7, v12, v16

    move-object/from16 v39, v9

    aget-object v9, v1, v16

    move-object/from16 v40, v8

    aget-object v8, v3, v16

    invoke-direct {v14, v7, v9, v8}, LE3/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    goto :goto_3

    :cond_7
    move-object/from16 v40, v8

    move-object/from16 v39, v9

    :cond_8
    :goto_4
    const/4 v3, 0x3

    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    :goto_5
    const-string v7, "Lengths did not match: %d %d %d"

    array-length v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v8, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v3, 0x0

    invoke-static {v4, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_6
    const-string v7, "Could not find resources: %d %d %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v8, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    invoke-static {v4, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const-string v1, "Mapping file ID is: "

    invoke-static {v1, v15}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v4, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :cond_b
    :goto_8
    if-ge v3, v1, :cond_c

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, LE3/d;

    iget-object v8, v7, LE3/d;->a:Ljava/lang/String;

    iget-object v9, v7, LE3/d;->b:Ljava/lang/String;

    iget-object v7, v7, LE3/d;->c:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Build id for "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " on "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_c
    new-instance v1, LA/j;

    invoke-direct {v1, v5}, LA/j;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, LE3/w;->d()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_d

    invoke-static {v7}, LB2/b;->c(Landroid/content/pm/PackageInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    :goto_9
    move-object/from16 v34, v8

    goto :goto_a

    :cond_d
    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :goto_a
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v7, :cond_e

    const-string v7, "0.0"

    :cond_e
    move-object/from16 v35, v7

    new-instance v47, LE3/a;

    move-object/from16 v36, v1

    move-object/from16 v33, v3

    move-object/from16 v31, v11

    move-object/from16 v30, v15

    move-object/from16 v28, v47

    invoke-direct/range {v28 .. v36}, LE3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LA/j;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, v28

    move-object/from16 v1, v29

    move-object/from16 v3, v32

    move-object/from16 v8, v34

    move-object/from16 v7, v35

    const-string v11, "Installer package name is: "

    invoke-static {v11, v3}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x2

    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x0

    invoke-static {v4, v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    new-instance v3, Lx2/f;

    const/4 v12, 0x7

    invoke-direct {v3, v12}, Lx2/f;-><init>(I)V

    invoke-virtual/range {v21 .. v21}, LE3/w;->d()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lu2/j;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Lu2/j;-><init>(I)V

    new-instance v11, LL2/o;

    invoke-direct {v11, v14}, LL2/o;-><init>(Ljava/lang/Object;)V

    new-instance v15, LM3/a;

    invoke-direct {v15, v13}, LM3/a;-><init>(LK3/c;)V

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/"

    move-object/from16 v17, v12

    const-string v12, "/settings"

    invoke-static {v13, v1, v12}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, LE1/a;

    invoke-direct {v13, v12, v3}, LE1/a;-><init>(Ljava/lang/String;Lx2/f;)V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, LE3/w;->h:Ljava/lang/String;

    move-object/from16 v29, v4

    const-string v4, ""

    invoke-virtual {v3, v12, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v44, v9

    const-string v9, ""

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "/"

    invoke-static {v3, v9, v4}, Lcom/google/android/material/datepicker/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v12, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v12, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "com.google.firebase.crashlytics.mapping_file_id"

    const-string v4, "string"

    invoke-static {v5, v3, v4}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "com.crashlytics.android.build_id"

    invoke-static {v5, v3, v4}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_10
    if-eqz v3, :cond_11

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    filled-new-array {v3, v1, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_c
    const/4 v12, 0x4

    if-ge v9, v12, :cond_13

    aget-object v12, v3, v9

    move-object/from16 v22, v1

    if-eqz v12, :cond_12

    const-string v1, "-"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v22

    goto :goto_c

    :cond_13
    move-object/from16 v22, v1

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v3, :cond_14

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    invoke-static {v1}, LE3/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v55, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v55

    goto :goto_e

    :cond_15
    move-object/from16 v1, v22

    const/16 v22, 0x0

    :goto_e
    const/4 v3, 0x1

    if-eqz v17, :cond_16

    const/16 v16, 0x4

    goto :goto_f

    :cond_16
    move/from16 v16, v3

    :goto_f
    invoke-static/range {v16 .. v16}, LB/f;->d(I)I

    move-result v25

    new-instance v16, LM3/e;

    move-object/from16 v17, v1

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-direct/range {v16 .. v25}, LM3/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v16

    new-instance v4, LM3/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v7, v4, LM3/c;->h:Ljava/lang/Object;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v9, LL2/i;

    invoke-direct {v9}, LL2/i;-><init>()V

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v4, LM3/c;->i:Ljava/lang/Object;

    iput-object v5, v4, LM3/c;->a:Ljava/lang/Object;

    iput-object v1, v4, LM3/c;->b:Ljava/lang/Object;

    iput-object v14, v4, LM3/c;->d:Ljava/lang/Object;

    iput-object v11, v4, LM3/c;->c:Ljava/lang/Object;

    iput-object v15, v4, LM3/c;->e:Ljava/lang/Object;

    iput-object v13, v4, LM3/c;->f:Ljava/lang/Object;

    iput-object v10, v4, LM3/c;->g:Ljava/lang/Object;

    invoke-static {v14}, Lx2/f;->t(Lu2/j;)LM3/b;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v4, LM3/c;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, v4, LM3/c;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v7, v4, LM3/c;->a:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    const-string v8, "com.google.firebase.crashlytics"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "existing_instance_identifier"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v4, LM3/c;->b:Ljava/lang/Object;

    check-cast v7, LM3/e;

    iget-object v7, v7, LM3/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v4, v3}, LM3/c;->a(I)LM3/b;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL2/i;

    invoke-virtual {v1, v2}, LL2/i;->b(Ljava/lang/Object;)V

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v1

    goto :goto_10

    :cond_17
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, LM3/c;->a(I)LM3/b;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL2/i;

    invoke-virtual {v1, v2}, LL2/i;->b(Ljava/lang/Object;)V

    :cond_18
    iget-object v1, v4, LM3/c;->g:Ljava/lang/Object;

    check-cast v1, LE1/E;

    iget-object v2, v1, LE1/E;->f:Ljava/lang/Object;

    check-cast v2, LL2/i;

    iget-object v2, v2, LL2/i;->a:LL2/r;

    iget-object v5, v1, LE1/E;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v1, v1, LE1/E;->d:Ljava/lang/Object;

    check-cast v1, LL2/i;

    iget-object v1, v1, LL2/i;->a:LL2/r;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v1}, LF3/b;->a(LL2/r;LL2/r;)LL2/r;

    move-result-object v1

    iget-object v2, v6, LF3/d;->a:LF3/c;

    new-instance v5, LA/j;

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2, v5}, LL2/r;->h(Ljava/util/concurrent/Executor;LL2/h;)LL2/r;

    move-result-object v1

    :goto_10
    new-instance v2, LA3/b;

    invoke-direct {v2, v3}, LA3/b;-><init>(I)V

    invoke-virtual {v1, v0, v2}, LL2/r;->a(Ljava/util/concurrent/Executor;LL2/e;)V

    move-object/from16 v6, v40

    iget-object v0, v6, LE3/q;->h:LK3/c;

    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    iget-object v2, v6, LE3/q;->a:Landroid/content/Context;

    const-string v5, "com.crashlytics.RequireBuildId"

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_1a

    const-string v8, "bool"

    invoke-static {v2, v5, v8}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_19

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    :goto_11
    move-object/from16 v9, v44

    goto :goto_12

    :cond_19
    const-string v7, "string"

    invoke-static {v2, v5, v7}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_11

    :cond_1a
    move v5, v3

    goto :goto_11

    :goto_12
    iget-object v7, v9, LE3/a;->b:Ljava/lang/String;

    const-string v8, "."

    const-string v10, ".     |  |"

    if-nez v5, :cond_1b

    const-string v1, "Configured not to require a build ID."

    move-object/from16 v11, v29

    const/4 v5, 0x2

    invoke-static {v11, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x0

    invoke-static {v11, v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_1b
    move-object/from16 v11, v29

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    :cond_1c
    :goto_13
    new-instance v1, LE3/e;

    invoke-direct {v1}, LE3/e;-><init>()V

    iget-object v1, v1, LE3/e;->a:Ljava/lang/String;

    :try_start_2
    new-instance v5, LA/j;

    const-string v7, "crash_marker"

    const/16 v8, 0xb

    invoke-direct {v5, v7, v8, v0}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v5, v6, LE3/q;->e:LA/j;

    new-instance v5, LA/j;

    const-string v7, "initialization_marker"

    invoke-direct {v5, v7, v8, v0}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v5, v6, LE3/q;->d:LA/j;

    new-instance v5, LK3/c;

    move-object/from16 v7, v39

    invoke-direct {v5, v1, v0, v7}, LK3/c;-><init>(Ljava/lang/String;LK3/c;LF3/d;)V

    new-instance v10, LG3/e;

    invoke-direct {v10, v0}, LG3/e;-><init>(LK3/c;)V

    new-instance v0, LA/j;

    new-instance v12, Lu2/j;

    invoke-direct {v12, v8}, Lu2/j;-><init>(I)V

    new-array v3, v3, [LN3/a;

    const/16 v38, 0x0

    aput-object v12, v3, v38

    invoke-direct {v0, v3}, LA/j;-><init>([LN3/a;)V

    iget-object v3, v6, LE3/q;->m:Le4/c;

    iget-object v3, v3, Le4/c;->q:Ljava/lang/Object;

    check-cast v3, Ly3/o;

    new-instance v8, LA3/b;

    const/4 v12, 0x2

    invoke-direct {v8, v12}, LA3/b;-><init>(I)V

    invoke-virtual {v3, v8}, Ly3/o;->a(LX3/a;)V

    iget-object v3, v6, LE3/q;->a:Landroid/content/Context;

    iget-object v8, v6, LE3/q;->g:LE3/w;

    iget-object v12, v6, LE3/q;->h:LK3/c;

    iget-object v13, v6, LE3/q;->c:LA/j;

    iget-object v14, v6, LE3/q;->k:LE3/j;

    iget-object v15, v6, LE3/q;->n:LF3/d;

    move-object/from16 v47, v0

    move-object/from16 v41, v3

    move-object/from16 v48, v4

    move-object/from16 v46, v5

    move-object/from16 v42, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v43, v12

    move-object/from16 v49, v13

    move-object/from16 v50, v14

    move-object/from16 v51, v15

    invoke-static/range {v41 .. v51}, LD5/g;->n(Landroid/content/Context;LE3/w;LK3/c;LE3/a;LG3/e;LK3/c;LA/j;LM3/c;LA/j;LE3/j;LF3/d;)LD5/g;

    move-result-object v50

    move-object/from16 v9, v44

    move-object/from16 v0, v48

    new-instance v41, LE3/n;

    iget-object v3, v6, LE3/q;->a:Landroid/content/Context;

    iget-object v4, v6, LE3/q;->g:LE3/w;

    iget-object v5, v6, LE3/q;->b:LE1/E;

    iget-object v8, v6, LE3/q;->h:LK3/c;

    iget-object v10, v6, LE3/q;->e:LA/j;

    iget-object v12, v6, LE3/q;->l:LB3/b;

    iget-object v13, v6, LE3/q;->j:LA3/a;

    iget-object v14, v6, LE3/q;->k:LE3/j;

    iget-object v15, v6, LE3/q;->n:LF3/d;

    move-object/from16 v42, v3

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    move-object/from16 v47, v9

    move-object/from16 v51, v12

    move-object/from16 v52, v13

    move-object/from16 v53, v14

    move-object/from16 v54, v15

    move-object/from16 v49, v45

    move-object/from16 v48, v46

    move-object/from16 v45, v8

    move-object/from16 v46, v10

    invoke-direct/range {v41 .. v54}, LE3/n;-><init>(Landroid/content/Context;LE3/w;LE1/E;LK3/c;LA/j;LE3/a;LK3/c;LG3/e;LD5/g;LB3/b;LC3/a;LE3/j;LF3/d;)V

    move-object/from16 v3, v41

    iput-object v3, v6, LE3/q;->f:LE3/n;

    iget-object v3, v6, LE3/q;->d:LA/j;

    iget-object v4, v3, LA/j;->r:Ljava/lang/Object;

    check-cast v4, LK3/c;

    iget-object v3, v3, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/io/File;

    iget-object v4, v4, LK3/c;->r:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    iget-object v4, v7, LF3/d;->a:LF3/c;

    iget-object v4, v4, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v5, LE3/p;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v6}, LE3/p;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-interface {v4, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    :catch_0
    iget-object v4, v6, LE3/q;->f:LE3/n;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    iget-object v8, v4, LE3/n;->e:LF3/d;

    iget-object v8, v8, LF3/d;->a:LF3/c;

    new-instance v9, LA/o;

    const/4 v10, 0x5

    invoke-direct {v9, v4, v10, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, LF3/c;->a(Ljava/lang/Runnable;)LL2/r;

    new-instance v1, Le4/c;

    const/16 v8, 0xc

    invoke-direct {v1, v8, v4}, Le4/c;-><init>(ILjava/lang/Object;)V

    new-instance v8, LE3/s;

    iget-object v9, v4, LE3/n;->j:LB3/b;

    invoke-direct {v8, v1, v0, v5, v9}, LE3/s;-><init>(Le4/c;LM3/c;Ljava/lang/Thread$UncaughtExceptionHandler;LB3/b;)V

    iput-object v8, v4, LE3/n;->n:LE3/s;

    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v3, :cond_1f

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const-string v1, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    const/4 v3, 0x3

    invoke-static {v11, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v3, 0x0

    invoke-static {v11, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    invoke-virtual {v6, v0}, LE3/q;->b(LM3/c;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    :cond_1f
    const-string v1, "Successfully configured exception handler."

    const/4 v3, 0x3

    invoke-static {v11, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x0

    invoke-static {v11, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    iget-object v1, v7, LF3/d;->a:LF3/c;

    new-instance v2, LE3/o;

    const/4 v8, 0x0

    invoke-direct {v2, v6, v0, v8}, LE3/o;-><init>(LE3/q;LM3/c;I)V

    invoke-virtual {v1, v2}, LF3/c;->a(Ljava/lang/Runnable;)LL2/r;

    goto :goto_15

    :goto_14
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, v6, LE3/q;->f:LE3/n;

    :goto_15
    new-instance v15, LA3/e;

    invoke-direct {v15, v6}, LA3/e;-><init>(LE3/q;)V

    goto :goto_16

    :cond_21
    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".   \\ |  | /"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".    \\    /"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     \\  /"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".      \\/"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".      /\\"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     /  \\"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".    /    \\"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".   / |  | \\"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    move-object v11, v4

    const-string v1, "Error retrieving app package info."

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v15, 0x0

    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v26

    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initializing Crashlytics blocked main for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v11, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v3, 0x0

    invoke-static {v11, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(ILandroidx/media3/common/TrackGroup;[I)Lp3/Y;
    .locals 7

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LD0/l;

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v1, :cond_0

    new-instance v1, LD0/i;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LD0/i;-><init>(ILandroidx/media3/common/TrackGroup;ILD0/l;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LA3/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->c(Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public e(J)J
    .locals 9

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, LI0/w;

    iget v1, v0, LI0/w;->e:I

    int-to-long v1, v1

    mul-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long v3, p1, v1

    iget-wide p1, v0, LI0/w;->j:J

    const-wide/16 v0, 0x1

    sub-long v7, p1, v0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lk0/C;->j(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lq2/c;

    check-cast v0, Lq2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lm2/a;->e:I

    new-instance v1, LK1/c;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LK1/c;-><init>(IZ)V

    const/4 v2, 0x0

    iput-object v2, v1, LK1/c;->q:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, LK1/c;->r:Ljava/lang/Object;

    iput-object v2, v1, LK1/c;->s:Ljava/lang/Object;

    const-string v2, ""

    iput-object v2, v1, LK1/c;->t:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-virtual {v0}, Lq2/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v4, LF3/a;

    const/4 v6, 0x5

    invoke-direct {v4, v0, v2, v1, v6}, LF3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lq2/h;->y(Landroid/database/Cursor;Lq2/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/playlist/PlaylistActivity;

    const/4 v1, -0x1

    iput v1, v0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    return-void
.end method

.method public g(LL2/r;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, LA3/d;->b:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    invoke-static {p1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast p1, LE3/l;

    invoke-virtual {p1}, LE3/l;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL2/r;

    return-object p1

    :pswitch_2
    iget-object p1, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, LA4/p;

    const-string v1, "refresh"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LA4/p;->T()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, LA4/p;->q0:Ljava/util/ArrayList;

    iget-object v0, v0, LA4/p;->y0:LA4/k;

    if-eqz v0, :cond_0

    iput-object p1, v0, LA4/k;->e:Ljava/util/List;

    invoke-virtual {v0}, Lv1/y;->d()V

    :cond_0
    return-void
.end method

.method public i(LX3/b;)V
    .locals 4

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, LB3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Crashlytics native component now available."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, v0, LB3/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, LX3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB3/b;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/ssl/TlsSupport;->a(Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public j(Lio/realm/y;)V
    .locals 2

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-class v1, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v1}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/T;->d()V

    invoke-virtual {p1, v0}, Lio/realm/y;->F(Ljava/util/Collection;)V

    return-void
.end method

.method public k(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/MainActivity;

    sget v1, Lib/player/pages/MainActivity;->B0:I

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/gson/j;

    invoke-direct {v1}, Lcom/google/gson/j;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lib/player/models/SubTitleUserModel;

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubTitleUserModel;

    iget-object v0, v0, Lib/player/pages/MainActivity;->i0:Lib/player/base/helper/w;

    iget-object v1, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/j;

    invoke-virtual {v0, p1}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "subtitle_login"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public l(LJ/l;)Lh2/b;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, LA3/d;->q:Ljava/lang/Object;

    check-cast v2, Lh2/c;

    iget-object v3, v0, LJ/l;->r:Ljava/lang/Object;

    check-cast v3, Ljava/net/URL;

    const-string v4, "CctTransportBackend"

    invoke-static {v4}, Lcom/bumptech/glide/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Making request to: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v5, v2, Lh2/c;->g:I

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    const-string v7, "datatransport/3.3.0 android/"

    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "application/json"

    const-string v9, "Content-Type"

    invoke-virtual {v3, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept-Encoding"

    invoke-virtual {v3, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v10, "X-Goog-Api-Key"

    invoke-virtual {v3, v10, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch LR3/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v13, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v2, v2, Lh2/c;->a:LL2/o;

    iget-object v0, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Li2/m;

    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-direct {v14, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v15, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v14, LT3/e;

    iget-object v2, v2, LL2/o;->b:Ljava/lang/Object;

    check-cast v2, LT3/d;

    iget-object v8, v2, LT3/d;->a:Ljava/util/HashMap;

    iget-object v10, v2, LT3/d;->b:Ljava/util/HashMap;

    iget-object v11, v2, LT3/d;->c:LT3/a;

    iget-boolean v2, v2, LT3/d;->d:Z

    move/from16 v19, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, LT3/e;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;LT3/a;Z)V

    invoke-virtual {v14, v0}, LT3/e;->h(Ljava/lang/Object;)LT3/e;

    invoke-virtual {v14}, LT3/e;->j()V

    iget-object v0, v14, LT3/e;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v12, :cond_2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch LR3/b; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Lcom/bumptech/glide/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Status Code: %d"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "Content-Type: %s"

    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Content-Encoding: %s"

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_b

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_b

    const/16 v2, 0x133

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    new-instance v2, Lh2/b;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lh2/b;-><init>(ILjava/net/URL;J)V

    return-object v2

    :cond_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Li2/u;->a(Ljava/io/BufferedReader;)Li2/u;

    move-result-object v4

    iget-wide v4, v4, Li2/u;->a:J

    new-instance v6, Lh2/b;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4, v5}, Lh2/b;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object v6

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v3

    :cond_b
    :goto_7
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lh2/b;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lh2/b;-><init>(ILjava/net/URL;J)V

    return-object v3

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :goto_8
    move-object v2, v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_8

    :goto_9
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_b
    if-eqz v12, :cond_c

    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    throw v2
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch LR3/b; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :goto_d
    const-string v2, "Couldn\'t encode request, returning with 400"

    invoke-static {v4, v2, v0}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lh2/b;

    const/16 v2, 0x190

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v5, v6}, Lh2/b;-><init>(ILjava/net/URL;J)V

    goto :goto_f

    :goto_e
    const-string v2, "Couldn\'t open connection, returning with 500"

    invoke-static {v4, v2, v0}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lh2/b;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v7, v5, v6}, Lh2/b;-><init>(ILjava/net/URL;J)V

    :goto_f
    return-object v0
.end method

.method public m(LL2/o;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    and-int/2addr p2, v4

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, LO/g;

    invoke-interface {p2}, LO/g;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, LO/g;

    invoke-interface {p2}, LO/g;->x()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v2

    :goto_0
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InputConnectionCompat"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    iget-object p1, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, LO/g;

    invoke-interface {p1}, LO/g;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-interface {p1}, LO/g;->g()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v2, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/16 v2, 0x1f

    const/4 v5, 0x2

    if-lt v1, v2, :cond_2

    new-instance v1, Le4/c;

    invoke-direct {v1, p2, v5}, Le4/c;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    :cond_2
    new-instance v1, LJ/e;

    invoke-direct {v1}, LJ/e;-><init>()V

    iput-object p2, v1, LJ/e;->q:Landroid/content/ClipData;

    iput v5, v1, LJ/e;->r:I

    :goto_2
    invoke-interface {p1}, LO/g;->m()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v1, p1}, LJ/d;->e(Landroid/net/Uri;)V

    invoke-interface {v1, p3}, LJ/d;->setExtras(Landroid/os/Bundle;)V

    invoke-interface {v1}, LJ/d;->build()LJ/g;

    move-result-object p1

    invoke-static {v0, p1}, LJ/U;->h(Landroid/view/View;LJ/g;)LJ/g;

    move-result-object p1

    if-nez p1, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/x;

    invoke-interface {v0}, Lib/player/base/helper/x;->d()V

    return-void
.end method

.method public proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;->handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1
.end method

.method public proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public resolve(Landroid/net/Uri;)[B
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->a([BLandroid/net/Uri;)[B

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 1

    iget-object v0, p0, LA3/d;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->b(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p1

    return-object p1
.end method
