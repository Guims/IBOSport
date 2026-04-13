.class public final Lr0/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lr0/t;

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/t;

    invoke-direct {v0, p1}, Lr0/t;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lr0/u;->a:Lr0/t;

    invoke-virtual {p0}, Lr0/u;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr0/u;->a:Lr0/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/u;->b(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 6

    iput p1, p0, Lr0/u;->b:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lr0/u;->d:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lr0/u;->d:J

    return-void

    :cond_2
    iput-wide v0, p0, Lr0/u;->d:J

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lr0/u;->e:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lr0/u;->f:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lr0/u;->c:J

    iput-wide v0, p0, Lr0/u;->d:J

    return-void
.end method
