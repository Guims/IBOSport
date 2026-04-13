.class public final Ly3/m;
.super Ljava/lang/Object;

# interfaces
.implements LX3/b;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:LX3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly3/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LX3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly3/m;->c:Ljava/lang/Object;

    iput-object v0, p0, Ly3/m;->a:Ljava/lang/Object;

    iput-object p1, p0, Ly3/m;->b:LX3/b;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly3/m;->a:Ljava/lang/Object;

    sget-object v1, Ly3/m;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly3/m;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ly3/m;->b:LX3/b;

    invoke-interface {v0}, LX3/b;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ly3/m;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ly3/m;->b:LX3/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method
