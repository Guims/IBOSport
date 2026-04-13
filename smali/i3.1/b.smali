.class public final Li3/b;
.super LR/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li3/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LR/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LR/b;-><init>(I)V

    sput-object v0, Li3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LR/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Li3/b;->r:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {p0, v0}, LR/c;-><init>(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    iput p1, p0, Li3/b;->r:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, LR/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Li3/b;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
