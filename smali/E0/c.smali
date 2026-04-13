.class public final synthetic LE0/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IJJI)V
    .locals 0

    iput p7, p0, LE0/c;->b:I

    iput-object p1, p0, LE0/c;->t:Ljava/lang/Object;

    iput p2, p0, LE0/c;->q:I

    iput-wide p3, p0, LE0/c;->r:J

    iput-wide p5, p0, LE0/c;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LE0/c;->b:I

    iget-object v1, p0, LE0/c;->t:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lp5/p;

    iget-object v0, v1, Lp5/p;->r:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr0/l;

    sget v0, Lk0/C;->a:I

    iget v2, p0, LE0/c;->q:I

    iget-wide v3, p0, LE0/c;->r:J

    iget-wide v5, p0, LE0/c;->s:J

    invoke-interface/range {v1 .. v6}, Lr0/l;->onAudioUnderrun(IJJ)V

    return-void

    :pswitch_0
    check-cast v1, LE0/d;

    iget-object v0, v1, LE0/d;->b:Lq0/a;

    check-cast v0, Lq0/j;

    iget-object v1, v0, Lq0/j;->s:Lq0/i;

    iget-object v2, v1, Lq0/i;->b:Lp3/H;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lq0/i;->b:Lp3/H;

    invoke-static {v1}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/E;

    :goto_0
    invoke-virtual {v0, v1}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v3

    new-instance v2, Lq0/g;

    iget v4, p0, LE0/c;->q:I

    iget-wide v5, p0, LE0/c;->r:J

    iget-wide v7, p0, LE0/c;->s:J

    invoke-direct/range {v2 .. v8}, Lq0/g;-><init>(Lq0/b;IJJ)V

    const/16 v1, 0x3ee

    invoke-virtual {v0, v3, v1, v2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
