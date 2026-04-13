.class public final Ll3/k;
.super Lb3/j;


# instance fields
.field public final synthetic b:Ll3/m;


# direct methods
.method public constructor <init>(Ll3/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/k;->b:Ll3/m;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Ll3/k;->b:Ll3/m;

    invoke-virtual {p1}, Ll3/m;->b()Ll3/n;

    move-result-object p1

    invoke-virtual {p1}, Ll3/n;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Ll3/k;->b:Ll3/m;

    invoke-virtual {p1}, Ll3/m;->b()Ll3/n;

    move-result-object p1

    invoke-virtual {p1}, Ll3/n;->b()V

    return-void
.end method
