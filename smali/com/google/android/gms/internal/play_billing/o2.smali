.class public final Lcom/google/android/gms/internal/play_billing/o2;
.super Lcom/google/android/gms/internal/play_billing/d1;


# virtual methods
.method public final B(Lcom/google/android/gms/internal/play_billing/q2;Lcom/google/android/gms/internal/play_billing/p2;Lcom/google/android/gms/internal/play_billing/p2;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/q2;->r:Lcom/google/android/gms/internal/play_billing/p2;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/q2;->r:Lcom/google/android/gms/internal/play_billing/p2;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final j(Lcom/google/android/gms/internal/play_billing/p2;Lcom/google/android/gms/internal/play_billing/p2;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/p2;->b:Lcom/google/android/gms/internal/play_billing/p2;

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/play_billing/p2;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/p2;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/play_billing/q2;Lcom/google/android/gms/internal/play_billing/F1;Lcom/google/android/gms/internal/play_billing/F1;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/q2;->q:Lcom/google/android/gms/internal/play_billing/F1;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/q2;->q:Lcom/google/android/gms/internal/play_billing/F1;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final w(Lcom/google/android/gms/internal/play_billing/q2;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/q2;->b:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/q2;->b:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
