.class public final LK1/C;
.super Ljava/lang/Object;

# interfaces
.implements LK1/D;
.implements Le2/b;


# static fields
.field public static final t:LJ/l;


# instance fields
.field public final b:Le2/e;

.field public q:LK1/D;

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu2/j;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Le2/d;->a(ILe2/a;)LJ/l;

    move-result-object v0

    sput-object v0, LK1/C;->t:LJ/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LK1/C;->b:Le2/e;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/C;->b:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LK1/C;->s:Z

    iget-boolean v0, p0, LK1/C;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK1/C;->q:LK1/D;

    invoke-interface {v0}, LK1/D;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LK1/C;->q:LK1/D;

    sget-object v0, LK1/C;->t:LJ/l;

    invoke-virtual {v0, p0}, LJ/l;->f(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, LK1/C;->q:LK1/D;

    invoke-interface {v0}, LK1/D;->b()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LK1/C;->q:LK1/D;

    invoke-interface {v0}, LK1/D;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Le2/e;
    .locals 1

    iget-object v0, p0, LK1/C;->b:Le2/e;

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/C;->b:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-boolean v0, p0, LK1/C;->r:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LK1/C;->r:Z

    iget-boolean v0, p0, LK1/C;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LK1/C;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK1/C;->q:LK1/D;

    invoke-interface {v0}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
