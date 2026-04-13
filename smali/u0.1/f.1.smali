.class public final Lu0/f;
.super Ljava/lang/Object;

# interfaces
.implements Lu0/p;


# instance fields
.field public final b:Lu0/m;

.field public q:Lu0/j;

.field public r:Z

.field public final synthetic s:Lu0/g;


# direct methods
.method public constructor <init>(Lu0/g;Lu0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/f;->s:Lu0/g;

    iput-object p2, p0, Lu0/f;->b:Lu0/m;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 3

    iget-object v0, p0, Lu0/f;->s:Lu0/g;

    iget-object v0, v0, Lu0/g;->u:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LB4/l;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lk0/C;->U(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
