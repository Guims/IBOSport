.class public final synthetic Lr0/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp5/p;

.field public final synthetic q:Z


# direct methods
.method public synthetic constructor <init>(Lp5/p;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/k;->b:Lp5/p;

    iput-boolean p2, p0, Lr0/k;->q:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr0/k;->b:Lp5/p;

    iget-object v0, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v1, Lk0/C;->a:I

    iget-boolean v1, p0, Lr0/k;->q:Z

    invoke-interface {v0, v1}, Lr0/l;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method
