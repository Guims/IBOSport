.class public final LI0/o;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, LI0/o;->a:[B

    return-void
.end method


# virtual methods
.method public final format(Landroidx/media3/common/Format;)V
    .locals 0

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1

    iget-object p4, p0, LI0/o;->a:[B

    array-length v0, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 0

    invoke-virtual {p1, p2}, Lk0/u;->H(I)V

    return-void
.end method

.method public final sampleMetadata(JIIILI0/K;)V
    .locals 0

    return-void
.end method
