.class public final LV1/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LV1/f;->b:I

    iput-object p2, p0, LV1/f;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p0, LV1/f;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Timeout waiting for ServiceConnection callback "

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v1, Lx2/x;

    iget-object v1, v1, Lx2/x;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lx2/v;

    iget-object v2, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v2, Lx2/x;

    iget-object v2, v2, Lx2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx2/w;

    if-eqz v2, :cond_3

    iget v4, v2, Lx2/w;->b:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v4, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v2, Lx2/w;->f:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    iget-object p1, p1, Lx2/v;->b:Ljava/lang/String;

    invoke-static {p1}, Lx2/o;->e(Ljava/lang/Object;)V

    const-string v4, "unknown"

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v0}, Lx2/w;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_3
    monitor-exit v1

    :goto_1
    move v2, v3

    goto :goto_4

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    iget-object v0, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v0, Lx2/x;

    iget-object v0, v0, Lx2/x;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lx2/v;

    iget-object v1, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v1, Lx2/x;

    iget-object v1, v1, Lx2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx2/w;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lx2/w;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v1, Lx2/w;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, v1, Lx2/w;->e:Lx2/v;

    iget-object v5, v1, Lx2/w;->g:Lx2/x;

    iget-object v5, v5, Lx2/x;->c:LF2/e;

    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v1, Lx2/w;->g:Lx2/x;

    iget-object v5, v4, Lx2/x;->d:LA2/b;

    iget-object v4, v4, Lx2/x;->b:Landroid/content/Context;

    invoke-virtual {v5, v4, v1}, LA2/b;->a(Landroid/content/Context;Lx2/w;)V

    iput-boolean v2, v1, Lx2/w;->c:Z

    const/4 v2, 0x2

    iput v2, v1, Lx2/w;->b:I

    :cond_5
    iget-object v1, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v1, Lx2/x;

    iget-object v1, v1, Lx2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_3
    monitor-exit v0

    goto :goto_1

    :goto_4
    return v2

    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    iget-object v0, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v0, Ld/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_8

    iget-object p1, v0, Ld/a;->b:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_2
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_1
    iget-object v0, p0, LV1/f;->q:Ljava/lang/Object;

    check-cast v0, LV1/g;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LV1/d;

    invoke-virtual {v0, p1}, LV1/g;->b(LV1/d;)V

    goto :goto_6

    :cond_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LV1/d;

    iget-object v0, v0, LV1/g;->d:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->l(La2/c;)V

    :cond_a
    const/4 v2, 0x0

    :goto_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
