.class public final LI0/g;
.super Ljava/lang/Object;

# interfaces
.implements LI0/F;


# instance fields
.field public final a:LI0/i;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(LI0/i;JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/g;->a:LI0/i;

    iput-wide p2, p0, LI0/g;->b:J

    iput-wide p4, p0, LI0/g;->c:J

    iput-wide p6, p0, LI0/g;->d:J

    iput-wide p8, p0, LI0/g;->e:J

    iput-wide p10, p0, LI0/g;->f:J

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)LI0/E;
    .locals 13

    iget-object v0, p0, LI0/g;->a:LI0/i;

    invoke-interface {v0, p1, p2}, LI0/i;->e(J)J

    move-result-wide v1

    iget-wide v9, p0, LI0/g;->e:J

    iget-wide v11, p0, LI0/g;->f:J

    const-wide/16 v3, 0x0

    iget-wide v5, p0, LI0/g;->c:J

    iget-wide v7, p0, LI0/g;->d:J

    invoke-static/range {v1 .. v12}, LI0/h;->a(JJJJJJ)J

    move-result-wide v0

    new-instance v2, LI0/E;

    new-instance v3, LI0/G;

    invoke-direct {v3, p1, p2, v0, v1}, LI0/G;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v2
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, LI0/g;->b:J

    return-wide v0
.end method
