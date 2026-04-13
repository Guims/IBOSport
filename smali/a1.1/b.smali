.class public final La1/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:La1/e;

.field public d:LL2/o;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, La1/b;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, La1/b;->b:Ljava/util/ArrayDeque;

    new-instance v0, La1/e;

    invoke-direct {v0}, La1/e;-><init>()V

    iput-object v0, p0, La1/b;->c:La1/e;

    return-void
.end method


# virtual methods
.method public final a(LI0/r;I)J
    .locals 6

    iget-object v0, p0, La1/b;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, LI0/r;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
