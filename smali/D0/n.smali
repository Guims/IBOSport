.class public final LD0/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field public final synthetic a:LD0/t;


# direct methods
.method public constructor <init>(LD0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/n;->a:LD0/t;

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    sget-object p1, LD0/t;->j:Lp3/X;

    iget-object p1, p0, LD0/n;->a:LD0/t;

    invoke-virtual {p1}, LD0/t;->e()V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    sget-object p1, LD0/t;->j:Lp3/X;

    iget-object p1, p0, LD0/n;->a:LD0/t;

    invoke-virtual {p1}, LD0/t;->e()V

    return-void
.end method
