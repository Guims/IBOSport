.class public final Landroidx/databinding/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic b:Landroidx/databinding/e;


# direct methods
.method public constructor <init>(Landroidx/databinding/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/databinding/d;->b:Landroidx/databinding/e;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Landroidx/databinding/d;->b:Landroidx/databinding/e;

    iget-object p1, p1, Landroidx/databinding/e;->r:LA4/f;

    invoke-virtual {p1}, LA4/f;->run()V

    return-void
.end method
