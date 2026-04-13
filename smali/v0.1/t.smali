.class public final synthetic Lv0/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lv0/t;->b:I

    iput-object p2, p0, Lv0/t;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lv0/t;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lv0/t;->q:Ljava/lang/Object;

    check-cast v0, Ly0/f;

    iget-object v2, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Ly0/f;->m:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-wide v3, v0, Ly0/f;->l:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v0, Ly0/f;->l:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v4, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v3, v0, Ly0/f;->n:Ljava/lang/IllegalStateException;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_2
    invoke-virtual {v0}, Ly0/f;->a()V

    monitor-exit v2

    :goto_0
    return-void

    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, v1, Lv0/t;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v3, Ly/d;->g:Landroid/os/Handler;

    sget-object v0, Ly/d;->f:Ljava/lang/reflect/Method;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x1b

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    if-nez v0, :cond_5

    goto/16 :goto_6

    :cond_5
    sget-object v7, Ly/d;->e:Ljava/lang/reflect/Method;

    if-nez v7, :cond_6

    sget-object v7, Ly/d;->d:Ljava/lang/reflect/Method;

    if-nez v7, :cond_6

    goto/16 :goto_6

    :cond_6
    :try_start_5
    sget-object v7, Ly/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object v7, Ly/d;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v9

    new-instance v10, Ly/c;

    invoke-direct {v10, v2}, Ly/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v9, v10}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v11, LE1/k;

    const/16 v12, 0x15

    invoke-direct {v11, v10, v12, v8}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v11, 0x0

    if-eq v4, v6, :cond_a

    if-ne v4, v5, :cond_9

    goto :goto_2

    :cond_9
    move v4, v11

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_b

    :try_start_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v9

    const/4 v9, 0x0

    move-object v5, v10

    const/4 v10, 0x0

    move-object v15, v12

    move-object/from16 v16, v12

    :try_start_7
    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v9

    move-object v5, v10

    goto :goto_5

    :cond_b
    move-object v4, v9

    move-object v5, v10

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    new-instance v0, LE1/k;

    const/16 v6, 0x16

    invoke-direct {v0, v4, v6, v5}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :goto_5
    new-instance v6, LE1/k;

    const/16 v7, 0x16

    invoke-direct {v6, v4, v7, v5}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    :goto_6
    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    :cond_c
    :goto_7
    return-void

    :pswitch_1
    iget-object v0, v1, Lv0/t;->q:Ljava/lang/Object;

    check-cast v0, Lv0/f;

    invoke-virtual {v0}, Lv0/f;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
