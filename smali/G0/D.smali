.class public final LG0/D;
.super Ljava/lang/Object;


# instance fields
.field public final a:LG0/l;

.field public final b:LG0/z;

.field public final c:LG0/y;

.field public final d:LB4/p;

.field public final e:LB4/p;

.field public final f:Lc1/c;

.field public g:Landroidx/media3/common/VideoSize;

.field public h:Landroidx/media3/common/VideoSize;

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(LG0/l;LG0/z;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/D;->a:LG0/l;

    iput-object p2, p0, LG0/D;->b:LG0/z;

    new-instance p1, LG0/y;

    invoke-direct {p1}, LG0/y;-><init>()V

    iput-object p1, p0, LG0/D;->c:LG0/y;

    new-instance p1, LB4/p;

    invoke-direct {p1}, LB4/p;-><init>()V

    iput-object p1, p0, LG0/D;->d:LB4/p;

    new-instance p1, LB4/p;

    invoke-direct {p1}, LB4/p;-><init>()V

    iput-object p1, p0, LG0/D;->e:LB4/p;

    new-instance p1, Lc1/c;

    invoke-direct {p1}, Lc1/c;-><init>()V

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    shl-int/2addr p2, v1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lc1/c;->b:I

    const/4 v2, -0x1

    iput v2, p1, Lc1/c;->c:I

    iput v0, p1, Lc1/c;->d:I

    new-array v0, p2, [J

    iput-object v0, p1, Lc1/c;->f:Ljava/lang/Object;

    sub-int/2addr p2, v1

    iput p2, p1, Lc1/c;->e:I

    iput-object p1, p0, LG0/D;->f:Lc1/c;

    sget-object p1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object p1, p0, LG0/D;->h:Landroidx/media3/common/VideoSize;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LG0/D;->j:J

    return-void
.end method
