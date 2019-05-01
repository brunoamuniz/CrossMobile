/* (c) 2019 by Panayotis Katsaloulis
 *
 * CrossMobile is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 2.
 *
 * CrossMobile is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with CrossMobile; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.crossmobile.gui.elements;

import com.panayotis.hrgui.HiResDialog;
import com.panayotis.hrgui.HiResIcon;
import com.panayotis.hrgui.HiResPanel;
import com.panayotis.hrgui.HiResScrollPane;
import org.crossmobile.Version;
import org.crossmobile.gui.actives.ActiveLabel;
import org.crossmobile.gui.actives.ActiveTextArea;
import org.crossmobile.utils.FileUtils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.IOException;

public class About extends HiResDialog {

    private final static About INSTANCE = new About();

    public static void showAbout() {
        INSTANCE.setVisible(true);
        INSTANCE.setResizable(false);
    }

    /**
     * Creates new form About
     */
    private About() {
        super((Frame) null, true);
        initComponents();
        displayVersion.setText("CrossMobile v " + Version.VERSION);
        try {
            setIconImage(ImageIO.read(getClass().getClassLoader().getResourceAsStream("images/logo-small.png")));
        } catch (IOException ex) {
        }
        licenseT.setText(FileUtils.readSafe(getClass().getResourceAsStream("/org/crossmobile/LICENSE"), "license", "(c) 2019 by Panayotis Katsaloulis"));
        licenseT.setCaretPosition(0);

        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Background = new GradientPanel();
        jPanel1 = new HiResPanel();
        jScrollPane1 = new HiResScrollPane();
        licenseT = new ActiveTextArea();
        displayVersion = new ActiveLabel();

        setTitle("About CrossMobile");

        Background.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 12, 12, 12));
        jPanel1.setOpaque(false);
        jPanel1.setLayout(new java.awt.BorderLayout());

        licenseT.setEditable(false);
        licenseT.setColumns(36);
        licenseT.setFont(new java.awt.Font("SansSerif", 0, 12)); // NOI18N
        licenseT.setRows(20);
        jScrollPane1.setViewportView(licenseT);

        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        Background.add(jPanel1, java.awt.BorderLayout.CENTER);

        displayVersion.setFont(displayVersion.getFont().deriveFont(displayVersion.getFont().getSize() + 1f));
        displayVersion.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        displayVersion.setIcon(new HiResIcon("images/logo-small", false));
        displayVersion.setBorder(javax.swing.BorderFactory.createEmptyBorder(12, 0, 12, 0));
        displayVersion.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        displayVersion.setIconTextGap(8);
        displayVersion.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        Background.add(displayVersion, java.awt.BorderLayout.NORTH);

        getContentPane().add(Background, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Background;
    private javax.swing.JLabel displayVersion;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea licenseT;
    // End of variables declaration//GEN-END:variables
}
