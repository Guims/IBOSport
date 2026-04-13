.class public final Lw0/i;
.super Lw0/m;


# instance fields
.field public final d:I

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Landroidx/media3/common/DrmInitData;

.field public final r:Lp3/H;

.field public final s:Lp3/H;

.field public final t:Lp3/J;

.field public final u:J

.field public final v:Lw0/h;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Lw0/h;Ljava/util/Map;)V
    .locals 4

    move/from16 v0, p18

    invoke-direct {p0, p2, p3, v0}, Lw0/m;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    iput p1, p0, Lw0/i;->d:I

    iput-wide p7, p0, Lw0/i;->h:J

    iput-boolean p6, p0, Lw0/i;->g:Z

    iput-boolean p9, p0, Lw0/i;->i:Z

    iput p10, p0, Lw0/i;->j:I

    move-wide p1, p11

    iput-wide p1, p0, Lw0/i;->k:J

    move/from16 p1, p13

    iput p1, p0, Lw0/i;->l:I

    move-wide/from16 p1, p14

    iput-wide p1, p0, Lw0/i;->m:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lw0/i;->n:J

    move/from16 p1, p19

    iput-boolean p1, p0, Lw0/i;->o:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Lw0/i;->p:Z

    move-object/from16 p1, p21

    iput-object p1, p0, Lw0/i;->q:Landroidx/media3/common/DrmInitData;

    invoke-static/range {p22 .. p22}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Lw0/i;->r:Lp3/H;

    invoke-static/range {p23 .. p23}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Lw0/i;->s:Lp3/H;

    invoke-static/range {p25 .. p25}, Lp3/J;->a(Ljava/util/Map;)Lp3/J;

    move-result-object p1

    iput-object p1, p0, Lw0/i;->t:Lp3/J;

    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-wide/16 p2, 0x0

    if-nez p1, :cond_0

    invoke-static/range {p23 .. p23}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/d;

    iget-wide v0, p1, Lw0/g;->t:J

    iget-wide v2, p1, Lw0/g;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw0/i;->u:J

    goto :goto_0

    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static/range {p22 .. p22}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/f;

    iget-wide v0, p1, Lw0/g;->t:J

    iget-wide v2, p1, Lw0/g;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw0/i;->u:J

    goto :goto_0

    :cond_1
    iput-wide p2, p0, Lw0/i;->u:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p4, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, p4, p2

    if-ltz p1, :cond_3

    iget-wide v0, p0, Lw0/i;->u:J

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lw0/i;->u:J

    add-long/2addr v0, p4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lw0/i;->e:J

    cmp-long p1, p4, p2

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lw0/i;->f:Z

    move-object/from16 p1, p24

    iput-object p1, p0, Lw0/i;->v:Lw0/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
