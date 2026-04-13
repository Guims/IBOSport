.class public final LY3/g;
.super Ljava/lang/Object;

# interfaces
.implements LY3/j;


# instance fields
.field public final a:LY3/k;

.field public final b:LL2/i;


# direct methods
.method public constructor <init>(LY3/k;LL2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY3/g;->a:LY3/k;

    iput-object p2, p0, LY3/g;->b:LL2/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, LY3/g;->b:LL2/i;

    invoke-virtual {v0, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(LZ3/a;)Z
    .locals 7

    iget v0, p1, LZ3/a;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LY3/g;->a:LY3/k;

    invoke-virtual {v0, p1}, LY3/k;->a(LZ3/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p1, LZ3/a;->c:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-wide v2, p1, LZ3/a;->e:J

    iget-wide v4, p1, LZ3/a;->f:J

    new-instance v1, LY3/a;

    invoke-direct/range {v1 .. v6}, LY3/a;-><init>(JJLjava/lang/String;)V

    iget-object p1, p0, LY3/g;->b:LL2/i;

    iget-object p1, p1, LL2/i;->a:LL2/r;

    invoke-virtual {p1, v1}, LL2/r;->j(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
