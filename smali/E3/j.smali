.class public final LE3/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:LE1/E;

.field public final b:LE3/i;


# direct methods
.method public constructor <init>(LE1/E;LK3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/j;->a:LE1/E;

    new-instance p1, LE3/i;

    invoke-direct {p1, p2}, LE3/i;-><init>(LK3/c;)V

    iput-object p1, p0, LE3/j;->b:LE3/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LE3/j;->b:LE3/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LE3/i;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LE3/i;->a:LK3/c;

    iget-object v2, v0, LE3/i;->c:Ljava/lang/String;

    invoke-static {v1, p1, v2}, LE3/i;->a(LK3/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, LE3/i;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
