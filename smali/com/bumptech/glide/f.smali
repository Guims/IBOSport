.class public Lcom/bumptech/glide/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/internal/l;
.implements Lf1/d;
.implements Lz4/m;
.implements Lretrofit2/Callback;
.implements Lk/B0;
.implements Lj/x;
.implements Lj/k;
.implements Lk/V;
.implements Ll2/b;
.implements Lorg/chromium/net/c;
.implements Lp5/b;
.implements Lr0/p;
.implements Ls0/i;
.implements Lt1/c;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/f;->b:I

    iput-object p2, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LK1/A;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, LK1/A;->a:Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld5/p;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/bumptech/glide/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LX4/g;

    iput-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/x;->G:Z

    return-void
.end method

.method public D(Lj/m;)Z
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lk/k;

    iget-object v1, v0, Lk/k;->r:Lj/m;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lj/E;

    iget-object v1, v1, Lj/E;->A:Lj/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lk/k;->t:Lj/x;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lj/x;->D(Lj/m;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public H(I)V
    .locals 0

    return-void
.end method

.method public J(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public K(JJ)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public L()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/bumptech/glide/f;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    iget-object v2, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lo4/c;->a:Landroid/support/v4/media/session/b;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lo4/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lo4/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    :try_start_1
    sget-object v1, Lcom/google/gson/internal/q;->a:Lcom/google/gson/internal/q;

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/q;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public M(IF)V
    .locals 0

    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "https://ibsmarterplayer.com/"

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    const-string v1, "PostmanRuntime/7.33.0"

    invoke-interface {v0, p1, p2, v1}, Lu4/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/f;

    const/16 v0, 0x1a

    invoke-direct {p2, v0, p0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt4/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lt4/f;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public O(LE1/f;)V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    iget p1, p1, LE1/f;->a:I

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, v0, Lib/player/base/helper/c;->a:Z

    const-string v1, "BillingManager"

    const-string v2, "Billing setup complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LE1/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LE1/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LE1/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "inapp"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-gt v3, p1, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/C;->k(Ljava/util/List;)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    iput-object p1, v1, LE1/i;->a:Lcom/google/android/gms/internal/play_billing/C;

    if-eqz p1, :cond_1

    new-instance p1, LE1/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, LE1/i;->a:Lcom/google/android/gms/internal/play_billing/C;

    iput-object v1, p1, LE1/i;->a:Lcom/google/android/gms/internal/play_billing/C;

    iget-object v1, v0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v1, LE1/b;

    new-instance v2, Lib/player/base/helper/a;

    invoke-direct {v2, v0}, Lib/player/base/helper/a;-><init>(Lib/player/base/helper/c;)V

    invoke-virtual {v1, p1, v2}, LE1/b;->e(LE1/i;Lib/player/base/helper/a;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Product list must be set to a non empty list."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All products should be of the same product type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Product list cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public a(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    iget-object v1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v1, Lib/player/pages/SplashActivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public d(Lj/m;Z)V
    .locals 2

    instance-of v0, p1, Lj/E;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lj/E;

    iget-object v0, v0, Lj/E;->z:Lj/m;

    invoke-virtual {v0}, Lj/m;->k()Lj/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/m;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lk/k;

    iget-object v0, v0, Lk/k;->t:Lj/x;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lj/x;->d(Lj/m;Z)V

    :cond_1
    return-void
.end method

.method public e(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public f(J)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v0, v0, Lr0/x;->b:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/j;

    invoke-direct {v2, v0, p1, p2}, Lr0/j;-><init>(Lp5/p;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public g(JJ)J
    .locals 0

    return-wide p3
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Ld/a;

    iget-object v0, v0, Ld/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lh3/e;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    new-instance v2, LW3/e;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, LW3/e;-><init>(I)V

    new-instance v3, LJ/l;

    const/16 v4, 0x19

    invoke-direct {v3, v0, v1, v2, v4}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v3
.end method

.method public h(Lp5/c;LX4/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lp5/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lp5/a;

    iget v1, v0, Lp5/a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/a;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/a;

    invoke-direct {v0, p0, p2}, Lp5/a;-><init>(Lcom/bumptech/glide/f;LX4/c;)V

    :goto_0
    iget-object p2, v0, Lp5/a;->q:Ljava/lang/Object;

    iget v1, v0, Lp5/a;->s:I

    sget-object v2, LS4/i;->a:LS4/i;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lp5/a;->b:Lq5/k;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    new-instance p2, Lq5/k;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lq5/k;-><init>(Lp5/c;LV4/i;)V

    :try_start_1
    iput-object p2, v0, Lp5/a;->b:Lq5/k;

    iput v3, v0, Lp5/a;->s:I

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, LX4/g;

    invoke-interface {p1, p2, v0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, LX4/c;->releaseIntercepted()V

    return-object v2

    :goto_3
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, LX4/c;->releaseIntercepted()V

    throw p2
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/x;->M:Z

    return-void
.end method

.method public j(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->d(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public l(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public m(J)Lt0/j;
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt0/j;

    return-object p1
.end method

.method public o(Lj/m;Lj/o;)V
    .locals 7

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lj/g;

    iget-object v1, v0, Lj/g;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/f;

    iget-object v6, v6, Lj/f;->b:Lj/m;

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj/f;

    :cond_3
    new-instance v0, Lj/e;

    invoke-direct {v0, p0, v2, p2, p1}, Lj/e;-><init>(Lcom/bumptech/glide/f;Lj/f;Lj/o;Lj/m;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "DecoderAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v0, v0, Lr0/x;->b:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/i;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lr0/i;-><init>(Lp5/p;Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAudioTrackInitialized(Lr0/m;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v0, v0, Lr0/x;->b:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/h;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lr0/h;-><init>(Lp5/p;Lr0/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAudioTrackReleased(Lr0/m;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v0, v0, Lr0/x;->b:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/h;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lr0/h;-><init>(Lp5/p;Lr0/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lcom/bumptech/glide/f;->b:I

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, LA3/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LA3/d;->k(Lorg/json/JSONObject;)V

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt4/g;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lt4/g;->g(Lorg/json/JSONObject;)V

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt4/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lt4/f;->c(Lorg/json/JSONObject;)V

    return-void

    :sswitch_2
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/catchup/e;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lib/player/pages/catchup/e;->q0:Ljava/util/List;

    iget-object p2, p1, Lib/player/pages/catchup/e;->q0:Ljava/util/List;

    invoke-virtual {p1, p2}, Lib/player/pages/catchup/e;->U(Ljava/util/List;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    iget p1, p0, Lcom/bumptech/glide/f;->b:I

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, LA3/d;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw5/K;

    invoke-virtual {p2}, Lw5/K;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LA3/d;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LA3/d;->k(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt4/g;

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw5/K;

    invoke-virtual {p2}, Lw5/K;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lt4/g;->g(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lt4/g;->g(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    :try_start_2
    iget-object v0, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lt4/f;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw5/K;

    invoke-virtual {p2}, Lw5/K;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lt4/f;->c(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    iget-object p1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lt4/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lt4/f;->c(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :sswitch_2
    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/catchup/e;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {p2}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lib/player/pages/catchup/e;->q0:Ljava/util/List;

    goto :goto_4

    :cond_1
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lib/player/pages/catchup/e;->q0:Ljava/util/List;

    :goto_4
    iget-object p2, p1, Lib/player/pages/catchup/e;->q0:Ljava/util/List;

    invoke-virtual {p1, p2}, Lib/player/pages/catchup/e;->U(Ljava/util/List;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v0, v0, Lr0/x;->b:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/k;

    invoke-direct {v2, v0, p1}, Lr0/k;-><init>(Lp5/p;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lj/m;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->J:Lk/R0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk/R0;->p(Lj/m;)V

    :cond_0
    return-void
.end method

.method public q(Lj/m;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->O:Lk/n;

    if-eqz p1, :cond_1

    check-cast p1, Lk/R0;

    iget-object p1, p1, Lk/R0;->b:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->V:LJ/l;

    iget-object p1, p1, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/C;

    iget-object p2, p2, Landroidx/fragment/app/C;->a:Landroidx/fragment/app/K;

    invoke-virtual {p2}, Landroidx/fragment/app/K;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r()V
    .locals 2

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string v1, "ProfileInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public t(J)Ljava/util/List;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public u()Ljava/nio/channels/FileChannel;
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public v(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v2, v0, Lr0/x;->b:Lp5/p;

    iget-object v0, v2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LE0/c;

    const/4 v8, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, LE0/c;-><init>(Ljava/lang/Object;IJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public y(Lj/m;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p2, p0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p2, Lj/g;

    iget-object p2, p2, Lj/g;->u:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
