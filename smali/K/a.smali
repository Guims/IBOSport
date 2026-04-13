.class public final LK/a;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field public final b:I

.field public final q:LK/h;

.field public final r:I


# direct methods
.method public constructor <init>(ILK/h;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, LK/a;->b:I

    iput-object p2, p0, LK/a;->q:LK/h;

    iput p3, p0, LK/a;->r:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v1, p0, LK/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, LK/a;->r:I

    iget-object v1, p0, LK/a;->q:LK/h;

    iget-object v1, v1, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
