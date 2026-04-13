.class public final Lc1/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lc1/q;

.field public final b:Lc1/t;

.field public final c:LI0/L;

.field public final d:LI0/M;

.field public e:I


# direct methods
.method public constructor <init>(Lc1/q;Lc1/t;LI0/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/l;->a:Lc1/q;

    iput-object p2, p0, Lc1/l;->b:Lc1/t;

    iput-object p3, p0, Lc1/l;->c:LI0/L;

    iget-object p1, p1, Lc1/q;->g:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LI0/M;

    invoke-direct {p1}, LI0/M;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc1/l;->d:LI0/M;

    return-void
.end method
