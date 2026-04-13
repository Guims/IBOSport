.class public final Ln0/s;
.super Ljava/lang/Thread;


# instance fields
.field public final synthetic b:Landroid/os/ConditionVariable;

.field public final synthetic q:Ln0/t;


# direct methods
.method public constructor <init>(Ln0/t;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Ln0/s;->q:Ln0/t;

    iput-object p2, p0, Ln0/s;->b:Landroid/os/ConditionVariable;

    const-string p1, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln0/s;->q:Ln0/t;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln0/s;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Ln0/s;->q:Ln0/t;

    invoke-static {v1}, Ln0/t;->a(Ln0/t;)V

    iget-object v1, p0, Ln0/s;->q:Ln0/t;

    iget-object v1, v1, Ln0/t;->b:Ln0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
