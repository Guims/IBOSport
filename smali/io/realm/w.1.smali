.class public final Lio/realm/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/realm/J;

.field public final synthetic q:Lio/realm/x;

.field public final synthetic r:Z

.field public final synthetic s:LA3/d;

.field public final synthetic t:Lio/realm/internal/RealmNotifier;

.field public final synthetic u:Lio/realm/y;


# direct methods
.method public constructor <init>(Lio/realm/y;Lio/realm/J;Lio/realm/x;ZLA3/d;Lio/realm/internal/RealmNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/w;->u:Lio/realm/y;

    iput-object p2, p0, Lio/realm/w;->b:Lio/realm/J;

    iput-object p3, p0, Lio/realm/w;->q:Lio/realm/x;

    iput-boolean p4, p0, Lio/realm/w;->r:Z

    iput-object p5, p0, Lio/realm/w;->s:LA3/d;

    iput-object p6, p0, Lio/realm/w;->t:Lio/realm/internal/RealmNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lio/realm/w;->b:Lio/realm/J;

    invoke-static {v0}, Lio/realm/y;->D(Lio/realm/J;)Lio/realm/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v1, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/realm/w;->q:Lio/realm/x;

    invoke-interface {v2, v0}, Lio/realm/x;->j(Lio/realm/y;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lio/realm/d;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v1, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v0}, Lio/realm/d;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/realm/d;->close()V

    throw v1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v2, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    iget-object v2, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0}, Lio/realm/d;->z()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v3, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    invoke-virtual {v0}, Lio/realm/d;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lio/realm/d;->close()V

    throw v1

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Lio/realm/d;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v3, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    invoke-virtual {v0}, Lio/realm/d;->close()V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_0
    iget-boolean v0, p0, Lio/realm/w;->r:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/realm/w;->t:Lio/realm/internal/RealmNotifier;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lio/realm/w;->s:LA3/d;

    if-eqz v3, :cond_5

    new-instance v1, LE1/k;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    new-instance v2, LE1/k;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v3, v4}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v2, "Async transaction failed"

    invoke-direct {v0, v2, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lio/realm/d;->close()V

    throw v1
.end method
