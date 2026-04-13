.class public abstract Lw0/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Ljava/lang/String;

.field public final q:Lw0/f;

.field public final r:J

.field public final s:I

.field public final t:J

.field public final u:Landroidx/media3/common/DrmInitData;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:J

.field public final y:J

.field public final z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lw0/f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lw0/g;->q:Lw0/f;

    iput-wide p3, p0, Lw0/g;->r:J

    iput p5, p0, Lw0/g;->s:I

    iput-wide p6, p0, Lw0/g;->t:J

    iput-object p8, p0, Lw0/g;->u:Landroidx/media3/common/DrmInitData;

    iput-object p9, p0, Lw0/g;->v:Ljava/lang/String;

    iput-object p10, p0, Lw0/g;->w:Ljava/lang/String;

    iput-wide p11, p0, Lw0/g;->x:J

    iput-wide p13, p0, Lw0/g;->y:J

    iput-boolean p15, p0, Lw0/g;->z:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lw0/g;->t:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
