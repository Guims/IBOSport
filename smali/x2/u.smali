.class public final Lx2/u;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/os/Bundle;

.field public q:[Lu2/c;

.field public r:I

.field public s:Lx2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lx2/u;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x2

    iget-object v2, p0, Lx2/u;->q:[Lu2/c;

    invoke-static {p1, v1, v2, p2}, LE2/g;->N(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lx2/u;->r:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, LE2/g;->R(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lx2/u;->s:Lx2/b;

    invoke-static {p1, v3, v1, p2}, LE2/g;->L(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
