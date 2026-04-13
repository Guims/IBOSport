.class public final synthetic Lr0/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp5/p;

.field public final synthetic q:J


# direct methods
.method public synthetic constructor <init>(Lp5/p;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/j;->b:Lp5/p;

    iput-wide p2, p0, Lr0/j;->q:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr0/j;->b:Lp5/p;

    iget-object v0, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v1, Lk0/C;->a:I

    iget-wide v1, p0, Lr0/j;->q:J

    invoke-interface {v0, v1, v2}, Lr0/l;->onAudioPositionAdvancing(J)V

    return-void
.end method
