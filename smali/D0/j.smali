.class public final LD0/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Z

.field public final q:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Landroidx/media3/common/Format;->selectionFlags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, LD0/j;->b:Z

    invoke-static {p2, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p1

    iput-boolean p1, p0, LD0/j;->q:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, LD0/j;

    iget-boolean v0, p0, LD0/j;->q:Z

    iget-boolean v1, p1, LD0/j;->q:Z

    sget-object v2, Lp3/y;->a:Lp3/w;

    invoke-virtual {v2, v0, v1}, Lp3/w;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/j;->b:Z

    iget-boolean p1, p1, LD0/j;->b:Z

    invoke-virtual {v0, v1, p1}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object p1

    invoke-virtual {p1}, Lp3/y;->e()I

    move-result p1

    return p1
.end method
