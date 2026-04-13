.class public final Lj/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lj/w;


# direct methods
.method public constructor <init>(Lj/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/v;->b:Lj/w;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lj/v;->b:Lj/w;

    invoke-virtual {v0}, Lj/w;->c()V

    return-void
.end method
