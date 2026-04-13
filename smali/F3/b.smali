.class public abstract LF3/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:LG0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LG0/i;-><init>(I)V

    sput-object v0, LF3/b;->a:LG0/i;

    return-void
.end method

.method public static a(LL2/r;LL2/r;)LL2/r;
    .locals 5

    new-instance v0, Le4/c;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Le4/c;-><init>(I)V

    new-instance v1, LL2/i;

    iget-object v2, v0, Le4/c;->q:Ljava/lang/Object;

    check-cast v2, Le4/c;

    invoke-direct {v1, v2}, LL2/i;-><init>(Le4/c;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, LF3/a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, LF3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v0, LF3/b;->a:LG0/i;

    invoke-virtual {p0, v0, v3}, LL2/r;->c(Ljava/util/concurrent/Executor;LL2/a;)LL2/r;

    invoke-virtual {p1, v0, v3}, LL2/r;->c(Ljava/util/concurrent/Executor;LL2/a;)LL2/r;

    iget-object p0, v1, LL2/i;->a:LL2/r;

    return-object p0
.end method
