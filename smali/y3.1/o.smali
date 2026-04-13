.class public final Ly3/o;
.super Ljava/lang/Object;

# interfaces
.implements LX3/b;


# static fields
.field public static final c:Lq0/h;

.field public static final d:Ly3/e;


# instance fields
.field public a:LX3/a;

.field public volatile b:LX3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq0/h;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lq0/h;-><init>(I)V

    sput-object v0, Ly3/o;->c:Lq0/h;

    new-instance v0, Ly3/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly3/e;-><init>(I)V

    sput-object v0, Ly3/o;->d:Ly3/e;

    return-void
.end method

.method public constructor <init>(Lq0/h;LX3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/o;->a:LX3/a;

    iput-object p2, p0, Ly3/o;->b:LX3/b;

    return-void
.end method


# virtual methods
.method public final a(LX3/a;)V
    .locals 4

    iget-object v0, p0, Ly3/o;->b:LX3/b;

    sget-object v1, Ly3/o;->d:Ly3/e;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, LX3/a;->i(LX3/b;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly3/o;->b:LX3/b;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ly3/o;->a:LX3/a;

    new-instance v2, LD0/f;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3, p1}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v2, p0, Ly3/o;->a:LX3/a;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, LX3/a;->i(LX3/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly3/o;->b:LX3/b;

    invoke-interface {v0}, LX3/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
