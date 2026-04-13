.class public final Landroidx/fragment/app/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/O;


# instance fields
.field public final b:Landroidx/lifecycle/t;

.field public final q:Landroidx/fragment/app/O;

.field public final r:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;Landroidx/fragment/app/O;Landroidx/lifecycle/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/H;->b:Landroidx/lifecycle/t;

    iput-object p2, p0, Landroidx/fragment/app/H;->q:Landroidx/fragment/app/O;

    iput-object p3, p0, Landroidx/fragment/app/H;->r:Landroidx/lifecycle/p;

    return-void
.end method


# virtual methods
.method public final h(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/H;->q:Landroidx/fragment/app/O;

    invoke-interface {v0, p1}, Landroidx/fragment/app/O;->h(Landroid/os/Bundle;)V

    return-void
.end method
