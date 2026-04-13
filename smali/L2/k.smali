.class public final LL2/k;
.super Ljava/lang/Object;

# interfaces
.implements LL2/f;
.implements LL2/e;
.implements LL2/c;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final q:I

.field public final r:LL2/r;

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/Exception;

.field public w:Z


# direct methods
.method public constructor <init>(ILL2/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL2/k;->b:Ljava/lang/Object;

    iput p1, p0, LL2/k;->q:I

    iput-object p2, p0, LL2/k;->r:LL2/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, LL2/k;->s:I

    iget v1, p0, LL2/k;->t:I

    add-int/2addr v0, v1

    iget v1, p0, LL2/k;->u:I

    add-int/2addr v0, v1

    iget v1, p0, LL2/k;->q:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LL2/k;->v:Ljava/lang/Exception;

    iget-object v2, p0, LL2/k;->r:LL2/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget v3, p0, LL2/k;->t:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " underlying tasks failed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, LL2/k;->v:Ljava/lang/Exception;

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, LL2/k;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, LL2/r;->k()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, LL2/r;->j(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, LL2/k;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, LL2/k;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LL2/k;->s:I

    invoke-virtual {p0}, LL2/k;->a()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, LL2/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LL2/k;->u:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, LL2/k;->u:I

    iput-boolean v2, p0, LL2/k;->w:Z

    invoke-virtual {p0}, LL2/k;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, LL2/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LL2/k;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LL2/k;->t:I

    iput-object p1, p0, LL2/k;->v:Ljava/lang/Exception;

    invoke-virtual {p0}, LL2/k;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
