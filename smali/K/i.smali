.class public LK/i;
.super Landroid/view/accessibility/AccessibilityNodeProvider;


# instance fields
.field public final a:Le4/c;


# direct methods
.method public constructor <init>(Le4/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object p1, p0, LK/i;->a:Le4/c;

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, LK/i;->a:Le4/c;

    invoke-virtual {v0, p1}, Le4/c;->r(I)LK/h;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    iget-object p1, p0, LK/i;->a:Le4/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, LK/i;->a:Le4/c;

    invoke-virtual {v0, p1}, Le4/c;->s(I)LK/h;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, LK/i;->a:Le4/c;

    invoke-virtual {v0, p1, p2, p3}, Le4/c;->u(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
